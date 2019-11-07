1. If you are an OSP community member: create a model repository as described in the step 2. Otherwise: post an Issue in the [Forum](https://github.com/Open-Systems-Pharmacology/Forum/issues) and ask to create an empty model repository for you. For this, please provide the information below (s. step 2 for the details). As soon as an empty model repository is created: continue with the step 3.

    * name of your model (e.g. *Midazolam*)
    
    * short description of the model repository (e.g. *Whole-body PBPK model of midazolam as CYP3A4 DDI victim drug*)
    
    * repository topics (e.g. *pbpk*, *pbpd*, *ddi*, *pediatrics*, ...)

2. Creating a model repository:
    * One **Repository per Substance** (where possible)

    * Repository name: `<Substance>-Model` (e.g. `Midazolam-Model`)

    * Initialize Repository with Readme

    * (Optional) short description of the Repository

  <img width="451" alt="UploadModel_02" src="https://user-images.githubusercontent.com/25061876/68377694-2a2d2c80-014b-11ea-8d0e-08cc856be755.PNG">

* Define [Repository-topics](https://help.github.com/articles/classifying-your-repository-with-topics/):
  * Mandatory for model repositories: **osp-model**
  * Mandatory for qualification repositories: **osp-qualification**
  * Further topics: Optional. Topics are free text; however try to use predefined topics if available. Some predefined topics are:
    * *pbpk*
    * *pbpd*
    * *pk-sim*
    * *mobi*
    * *ddi*
    * *pediatrics*
  <img width="292" alt="UploadModel_03" src="https://user-images.githubusercontent.com/25061876/68377845-5ea0e880-014b-11ea-83e4-70652f0ad519.PNG">
3. Create a so called *Fork* of the OSP Model repository. This will create your own personal copy of the OSP repository, where you can upload and modify files (this copy is still **public and visible to everybody**). S. https://guides.github.com/activities/forking/ for more details.

   <img width="496" alt="UploadModel_04" src="https://user-images.githubusercontent.com/25061876/68378146-e5ee5c00-014b-11ea-97c5-9dd77fcdbd4b.PNG">
   
4. To upload files in your fork, just click on the “upload files” button and select your
   local files (**[this works for files <=25 MB](https://help.github.com/en/github/managing-files-in-a-repository/adding-a-file-to-a-repository)**. For files between 25 and 100 MB [use the command line](https://help.github.com/en/github/managing-files-in-a-repository/adding-a-file-to-a-repository-using-the-command-line) )

   * If you need to *modify* a file: you can do it locally and simply upload the modified file version. It will automatically overwrite the previous version.

5. Every model repository must contain project snapshots of all PK-Sim projects and ideally also the projects itself. Also a description of the repository in the README.md file. E.g. <img width="422" alt="UploadModel_05" src="https://user-images.githubusercontent.com/25061876/68380417-159f6300-0150-11ea-9c18-661e0cfe2d97.PNG">

6. README.md is written in the Markdown-Format (s. [here](https://guides.github.com/features/mastering-markdown) and [here](https://help.github.com/en/github/writing-on-github/basic-writing-and-formatting-syntax) for details.). It can be edited directly on GitHub in your Fork of a model repository when you click on the Edit button.
* A template is provided under [MODEL_REPO_README_TEMPLATE](MODEL_REPO_README_TEMPLATE.md). 
* Copy the content of the template into your README.md and fill the description of the model and of the repository files and the list of references (e.g. where the model was published)
* S. e.g. https://github.com/Open-Systems-Pharmacology/Alfentanil-Model/blob/master/README.md or https://github.com/Open-Systems-Pharmacology/Glucose-Insulin-Model/blob/master/README.md for good README examples.
