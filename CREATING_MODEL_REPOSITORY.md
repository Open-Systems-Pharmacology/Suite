# Creating a new model repository.

1. If you are an OSP community member: create a model repository as described in step 3. 

2. Otherwise (in case you are **not** an OSP community member): post an Issue in the [Forum](https://github.com/Open-Systems-Pharmacology/Forum/discussions) and ask to create an empty model repository for you. For this, please provide the information below (s. step 3 for the details). 

    * name of your model (e.g. *Midazolam*, check if already exists, otherwise use another name)
    
    * short description of the model repository (e.g. *Whole-body PBPK model of midazolam as CYP3A4 DDI victim drug*)
    
    * repository topics (e.g. *pbpk*, *pbpd*, *ddi*, *pediatrics*, ...)

    As soon as an empty model repository is created: continue with step 4.

3. Creating a model repository:
    * Please create **one repository per substance** (where possible)

    * Under **Repository template**: select `Open-Systems-Pharmacology/Evaluation-plan-template` (s. the screenshot below)

    * Repository name: `<Substance>-Model` (e.g. `Midazolam-Model`)

    * (Optional) short description of the Repository          
    
    * Set repository type to **Public**
 <br><br><p align="center"><img width="600" src="https://user-images.githubusercontent.com/25061876/215065273-23c90fba-3f0f-473b-9971-6a38c942c3b8.png"></p>

    * Define [Repository-topics](https://help.github.com/articles/classifying-your-repository-with-topics/):

      * Mandatory topic for model repositories: **osp-model**
      * Further topics: Optional. Topics are free text; however try to use predefined topics if available. Some predefined topics are:
        * *pbpk*
        * *pbpd*
        * *pk-sim*
        * *mobi*
        * *ddi*
        * *pediatrics*
<p align="center"><img src="https://user-images.githubusercontent.com/25061876/68377845-5ea0e880-014b-11ea-83e4-70652f0ad519.PNG"></p>

4. Create a so called *Fork* of the OSP Model repository. This will create your own personal copy of the OSP repository, where you can upload and modify files (this copy is still **public and visible to everybody**). S. https://guides.github.com/activities/forking/ for more details.

<p align="center"><img src="https://user-images.githubusercontent.com/25061876/68378146-e5ee5c00-014b-11ea-97c5-9dd77fcdbd4b.PNG"></p>
   
5. To upload files in your fork, just click on the “upload files” button and select your
   local files (**[this works for files <=25 MB](https://help.github.com/en/github/managing-files-in-a-repository/adding-a-file-to-a-repository)**. For files between 25 and 100 MB [use the command line](https://help.github.com/en/github/managing-files-in-a-repository/adding-a-file-to-a-repository-using-the-command-line) )

   * If you need to *modify* a file: you can do it locally and simply upload the modified file version. It will automatically overwrite the previous version. <br><br>

6. Every model repository must contain project snapshots of all PK-Sim projects ([what is a "PK-Sim snapshot"](https://docs.open-systems-pharmacology.org/working-with-pk-sim/pk-sim-documentation/importing-exporting-project-data-models#exporting-project-to-snapshot-loading-project-from-snapshot)) and a description of the repository in the **README.md** file (s. step 7.). E.g. 
<p align="center"><img src="https://user-images.githubusercontent.com/25061876/215067285-2010d261-9d0e-40b3-b229-80cf3a6def31.png"></p>

  * The folder **Evaluation** in the screenshot above contains a template for creating a _Model Evaluation plan_ (s. [Qualification and Model Evaluation plans](https://docs.open-systems-pharmacology.org/shared-tools-and-example-workflows/qualification) for details). Adding a _Model Evaluation plan_ is optional, but highly recommendable. This step is a MUST for every model which should be added to the [OSP PBPK Model Library](https://github.com/Open-Systems-Pharmacology/OSP-PBPK-Model-Library).
    * Some examples :
      * [Erythromycin evaluation plan](https://github.com/Open-Systems-Pharmacology/Erythromycin-Model/tree/master/Evaluation) (Evaluation-Report: s. [here](https://github.com/Open-Systems-Pharmacology/OSP-PBPK-Model-Library/blob/master/Erythromycin/Erythromycin_evaluation_report.md))
      * [Sildenafil evaluation plan](https://github.com/Open-Systems-Pharmacology/Sildenafil-Model/tree/master/Evaluation) (Evaluation-Report: s. [here](https://github.com/Open-Systems-Pharmacology/OSP-PBPK-Model-Library/blob/master/Sildenafil/Sildenafil_evaluation_report.md))

7. **README.md** is written in the _Markdown-Format_ (s. [here](https://guides.github.com/features/mastering-markdown) and [here](https://help.github.com/en/github/writing-on-github/basic-writing-and-formatting-syntax) for details.). It can be edited directly on GitHub in your Fork of a model repository when you click on the Edit button.

    * Some README examples
      * [Alfentanil-Model README](https://github.com/Open-Systems-Pharmacology/Alfentanil-Model/blob/master/README.md)
      * [Glucose-Insulin-Model README](https://github.com/Open-Systems-Pharmacology/Glucose-Insulin-Model/blob/master/README.md)

8. When you are finished with uploading files and Readme in your fork of the model repository, you must create a so called [_Pull Request_](https://guides.github.com/activities/forking/#making-a-pull-request) (**PR**). This is a proposal for the OSP to integrate your work back into the the original repository. For this, click on the “Code” tab first and then on “New pull Request”.
<p align="center"><img width="350" src="https://user-images.githubusercontent.com/25061876/68391340-b3eaf300-0167-11ea-9cd4-fd863b4b3a1e.PNG"></p>

9. On the next page, click on "Create Pull Request".
<p align="center"><img width="637" src="https://user-images.githubusercontent.com/25061876/68391555-396ea300-0168-11ea-8841-b82a4f267fe3.png"></p>

10. On the next page you can **optionally** select reviewers for your PR. Finally, click on “Create Pull Request” button.
<p align="center"><img src="https://user-images.githubusercontent.com/25061876/68391844-c154ad00-0168-11ea-9b74-44265deae0d3.png"></p>
Now somebody from the OSP maintainers team can integrate your work backt into the OSP (or ask you for changes if e.g. something needs to be modified before the PR can be accepted).
