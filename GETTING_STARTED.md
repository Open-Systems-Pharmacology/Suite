# Developer Getting Started

## Installing the prerequisites
1. Install Visual Studio 2015 Community Edition or better. [Visual Studio Install](https://www.visualstudio.com/downloads/)

1. Install Ruby and Rake. [Ruby Install](https://rubyinstaller.org/downloads/)

1. Install MikTeX. [MikTeX Install](https://github.com/Open-Systems-Pharmacology/MiKTeX/releases/download/v2.9.3/MikTex.2.9.3.msi).

1. Obtain Devexpress License and Install

   * DevExpress WinForms Controls and Libraries is used in the graphical user interface of the suite. You will need to obtain a license in order to work with the user interface.
 
   * DevExpress only provides trials on their current product offering, so you may have to acquire the license prior to downloading an older version if that's required to build the suite.
 
   * Obtain your license from DevExpress [DevExpress Order](https://www.devexpress.com/Support/Order/). Then get the installer for the version mentioned above that's required [DevExpress Install](https://www.devexpress.com/ClientCenter/DownloadManager/)
  
1. Install MSXML 4 [MSXML4 Installer](https://www.microsoft.com/en-ca/download/details.aspx?id=15697)

1. Install nuget.exe and ensure that it is in your `PATH` variable [NuGet Install](https://dist.nuget.org/index.html)

1. Add `OSPSuite.Core` as a nuget source using the following command
```
  nuget sources add -name ospsuite-core -source https://ci.appveyor.com/nuget/ospsuite-core
```

## Building and Running

1. Clone the repository locally (either from the open-systems-pharmacology organization or from your own fork)
   
1. For PK-Sim and MoBi, run the `postclean.bat` command
 
   There are several requirements to running the software that are not automatically performed when building with Visual Studio. An automated `postclean` batch file is used to take care of these tasks. 

1. Compile Source
  
1. Run Tests

1. Run the Application

## Useful Tips

1. The suite is using appveyor as a CI server which also provides a nuget feed that should be registered on your system. This will prevent you from having to enter AppVeyor password with each new instance of Visual Studio. This option is only available for developers with access to the appveyor feed. If you wish to be granted access to the feed, please let us know by posting a request in the forum.

```
nuget sources add -Name AppVeyor -source https://ci.appveyor.com/nuget/open-systems-pharmacology-ci -User <USER_NAME> -Password <MY_PASSWORD>
```
