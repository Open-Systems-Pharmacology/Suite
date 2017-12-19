require 'open-uri'
require 'openssl'
require_relative 'scripts/utils'
require_relative 'scripts/wix'
require_relative 'scripts/copy-dependencies'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

MANUFACTURER = 'Open Systems Pharmacology'
PRODUCT_NAME = "#{MANUFACTURER} Suite"
GITHUB_NAME = 'open-systems-pharmacology'
APPVEYOR_ACCOUNT_NAME = 'open-systems-pharmacology-ci'

VARIABLES = {}
MSI = {}

desc "Create suite setup"
task :create_setup,[:product_version, :branch_name]  do |t, args|
  @product_version = args.product_version
  @branch_name = args.branch_name || 'develop'
  release_version_split = @product_version.split('.')
  @product_release_version = "#{release_version_split[0]}.#{release_version_split[1]}"
  @product_full_version = "#{@product_release_version}.#{release_version_split[2]}"
  @product_full_name = "#{PRODUCT_NAME} #{@product_full_version}"

  VARIABLES[:ProductName] =  PRODUCT_NAME
  VARIABLES[:Manufacturer] =  MANUFACTURER
  VARIABLES[:ProductFullName] =  @product_full_name
  VARIABLES[:ProductVersion] =  @product_version
  VARIABLES[:ProductFullVersion] =  @product_full_version

  MSI[:pksim] = create_package('pk-sim', 'PK-Sim', 'setup.zip', @product_version, 'hotfix/7.2.1')
  MSI[:mobi] = create_package('mobi', 'MoBi', 'setup.zip', @product_version, 'hotfix/7.2.1')
  MSI[:matlab] = create_package('matlab-toolbox', 'Matlab-Toolbox')
  MSI[:r] = create_package('r-toolbox', 'R-Toolbox')
  MSI[:validator] = create_package('installationvalidator', 'InstallationValidator')
  
  Rake::Task['downlad_all_packages'].invoke
  
  create_versions_file
  create_setup compressed:'no', output_name:'OSPSuite-WebInstall' 
  create_setup compressed:'yes', output_name:'OSPSuite-Full'  
end

def create_versions_file
  version_file = File.join(output_dir,'versions.txt')
  File.open(version_file, 'w') do |file| 
    MSI.each do |key, package|
      file.puts "#{package[:git_repository]}: #{package[:file_name]}"
    end
  end
end

def create_package(appveyor_project_name,  git_repository = nil, artifact_name =  'setup.zip', version = @product_version, branch = @branch_name)
  compressed = artifact_name.include? '.zip'
  git_repo = git_repository || appveyor_project_name

  return {
    appveyor_project_name: appveyor_project_name,
    artifact_name: artifact_name,
    branch: branch,
    compressed: compressed,
    git_repository: git_repo,
    version: version
  } 
end

def run_candle(compressed)
  all_variables = VARIABLES.each.collect do |k, v|
    "-d#{k}=#{v}"
  end
  command_line = %W[#{deploy_dir}/bundle.wxs -dCompressed=#{compressed} -ext WixUtilExtension -ext WixNetFxExtension -ext WixBalExtension -o #{deploy_dir}/]
  Utils.run_cmd(Wix.candle, command_line + all_variables)
end

desc "Runs the light command that actually creates the msi package"
def run_light(exe)
  command_line = %W[#{deploy_dir}/Bundle.wixobj -o #{exe} -nologo -ext WixUIExtension -ext WixNetFxExtension -ext WixBalExtension -spdb -b #{deploy_dir}/ -cultures:en-us]
  Utils.run_cmd(Wix.light, command_line)
end

def create_setup(compressed:'yes', output_name:'OSPSuite')
  exe = File.join(output_dir,"#{output_name}.#{@product_full_version}.exe")
  run_candle compressed
  run_light exe
end

desc "Get a file from a remote server"
task :downlad_all_packages => :clean do
  threads = MSI.each_key.collect do |msi|
    Thread.new(msi) do |_msi|
      prepare_msi(_msi)
    end
  end

  threads.map(&:join)
end

desc "cleanup files before starting compilation"
task :clean do
  FileUtils.rm_rf  deploy_dir
  FileUtils.mkdir_p deploy_dir  
  FileUtils.mkdir_p output_dir  

  copy_depdencies current_dir,  deploy_dir do
    copy_files 'setup', '*'
  end
end

def prepare_msi(msi)
  package =  MSI[msi]
  file = download package
  puts file
  package[:file_name] = retrieve_package_name(file, package) 
  download_path = "https://systems-biology.com/fileadmin/sb_ftp/OSP_Updates/#{package[:file_name]}"
  VARIABLES["#{msi}DownloadPath"] = download_path
  VARIABLES[msi] = package[:file_name]
end

def download(package)
  file_name = package[:artifact_name]
  uri = "https://ci.appveyor.com/api/projects/#{APPVEYOR_ACCOUNT_NAME}/#{package[:appveyor_project_name]}/artifacts/#{file_name}?branch=#{package[:branch]}"
  download_file package[:appveyor_project_name], file_name, uri
end

def download_file(project_name, file_name, uri)
  download_dir = File.join(deploy_dir, project_name) 
  FileUtils.mkdir_p download_dir
  file = File.join(download_dir, file_name)
  puts "Downloading #{file_name} from #{uri} under #{file}"
  open(file, 'wb') do |fo| 
    fo.print open(uri,:read_timeout => nil).read
  end
  file
end

def retrieve_package_name(package_full_path, package)
  compressed = package[:compressed] || false
  artifact_name = package[:artifact_name];
  #pointing to real package already return 
  return artifact_name unless compressed

  unzip_dir = unzip(package_full_path)
  copy_msi_to_deploy unzip_dir  
end

#copy all msi packages defined under dir and return the name of the packages found (should only be one)
def copy_msi_to_deploy(dir)
  artifact_name = ''
  Dir.glob(File.join(dir, '*.msi')) do |x|
    copy x, deploy_dir
    artifact_name = File.basename(x)
  end 
  artifact_name
end

def unzip(package_full_path)
  unzip_dir = File.dirname(package_full_path)
  command_line = %W[e #{package_full_path} -o#{unzip_dir}]
  Utils.run_cmd('7z', command_line)
  unzip_dir
end

def deploy_dir
  File.join(current_dir,'deploy')
end

def output_dir
  File.join(current_dir,'output')
end

def current_dir
  File.dirname(__FILE__)
end