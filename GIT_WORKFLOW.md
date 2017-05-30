The proposed workflow will use `git merge` and `git rebase` for different tasks. Our goal is to establish a workflow that will ensure a clean and useful public history graph. The public history should be concise yet clear and reflect the work of the team in a cohesive way.

We will use `git merge` to incorporate the entire set of commit of one branch (typically the `develop` branch) into another one (typically `master`). 

We will use `git rebase` for all other type of code integration (sub tasks of a given swim lane etc..). 

# Definition
* The `master` branch is the ultimate source of truth. It should always be possible to use the code on `master` and create a production setup. 

* The `develop` branch is the branch where the development is taking place. Ultimately, when a new release is created, the commits in `develop` will be merged back into `master`.

* A `feature` branch is a short lived branch that is used during the implementation of a given task. It will be deleted once the feature is implemented and merged into `develop`.

* The git version to use is `1.8.5` or newer. This will allow the setting of the configuration option `git pull -rebase = preserve`. This option specify that _on pull, rebase should be used instead of merge_. But incoming merge commit should be preserved.

* Unless required otherwise, all work should be performed on a fork of the repository. A _Pull Request (PR)_, will be used to incorpate changes into the `develop` branch.

# Use Case: Implementing Task "426 it should be possible to delete observed data"
_Note:_ A task is a cohesive unit of work. This can be part of a bigger feature or a bug fix. We assume that a fork of the repository has already been created.

1. Create a `feature` branch with a **meaningful name** containing the id of the task. We will need to acquire the latest changes from the remote `develop` branch first and then create the feature branch
  * With option  git pull -rebase = preserve
  ```
  git checkout develop
  git pull upstream #<= git fetch upstream develop && git rebase -p upstream/develop
  git checkout -b 426-delete-observed-data
  ```
  * Without option  git pull -rebase = preserve
  ```
  git checkout develop
  git fetch upstream develop
  git rebase -p upstream/develop
  git checkout -b 426-delete-observed-data
  ```
2. Do work in your `feature` branch, committing early and often. 
3. Rebase frequently to incorporate any upstream changes in the `develop` branch (to resolve conflicts as early as possible)
 ```
 git fetch upstream develop
 git rebase -p upstream/develop
 ```
4. Once work on the feature is complete, you are ready to create a PR. The first step is to push the code to your own repo and then create a PR onto the original repo for review:
 ```
 git fetch upstream develop
 git rebase -p upstream/develop
 git push -u origin 426-delete-observed-data
 ```

 At that stage, your local branch `426-delete-observed-data` is set to track the remote branch `426-delete-observed-data` so you will be able to use the simple `git push` command from now on to udate your repo.

5. Create pull request on github so that your change may be reviewed. The pull request should be between the `develop` branch on the `upstream` repo and the `feature` branch on your `fork`. The PR message **should** use the task id and the whole description of the task. For example `Fixes #426 it should be possible to delete observed data`.

6. Upon code review, you may have to change the code slightly to take reviewer comments and concerns into account. If so just continue committing your work on your local `426-delete-observed-data` branch and repeat the steps above. 

7. Once the latest push has been accepted and all tests are passing, the reviewer can accept the pull request by using the `Squash and Merge` option. This will effectively squash all your commit into one and rebase the one commit from `426-delete-observed-data` onto `develop`.

8. Delete your remote branch `426-delete-observed-data` as it is not required anymore

9. Locally you can now repeat the synchronization of your develop branch
  ```
  git checkout develop
  git pull upstream
  ```
10. Your local `426-delete-observed-data` can also be deleted. 
 ```
 git branch -d 426-delete-observed-data
 ```
11. Optionally you may wish to remove any pointers locally to remote branch that do not exist anymore
 ```
 git remote prune origin
 ```
12. A useful alias can be created in git to avoid repeating the same commands again and again for synchronizing remote `develop` branch with local `feature` branch.

 ```
 [alias]
  sync  = !git fetch upstream $1 && git rebase upstream/$1
  syncd = !git sync develop
 ```
 Simply call `git syncd` to synchronize changes with the `develop` branch. To synchronize with an hypothetical other branch called `experience`, use `git sync experience`

# Use Case: Creating a new release 6.5.1
The work on the `develop` branch is finished and we are ready to tag the version officially. A tagged version will be a version that has been approved for work in production.

This is extremely simple with github using the concept of release. 

1. Click on the `releases` section from the `Code` tab
1. Click on `Draft new release`
1. Pick the `develop` branch or the latest commit on `develop` corresponding to the commit to tag
1. Name the tag `v6.5.1`. 
1. Give a meaningful name to the release `Release 6.5.1`
1. Optionally enter a description in the description field. This is typically where release notes should be written using the power of markdown. Files can also be attached to the description (manual, notes etc)
1. Publish release! _Great job_ 
 

# Use Case: Creating a hot fix
Release 6.5.1 has been out for a few weeks and a nasty bug (issue 756 on the bug tracking system) was reported that can corrupt a project file. We need to create a hot fix asap to address the issue. The hot fix should be applied to 6.5.1 obviously, but the actual fix should also be pushed to other branches such as `develop`

1. Create a branch based on the tag and create a new branch to collect all fixes for the hotfix
 ```
 git fetch upstream
 git checkout tags/v6.5.1 -b hotfix/6.5.2
 git push -u upstream hotfix/6.5.2
 ```

2. Create a branch for the one issue to solve 
 ```
 git checkout -b 756-project-corrupted
 ```

3. Implement hot fix in this local branch
4. Push commit to start the code review process

 ```
 git sync hotfix/6.5.2
 git push origin 756-project-corrupted
 ```
5. After completed review, rebase PR into `hotfix/6.5.2`
6. Repeat for all issues that will be part of the hotfix (one or more)
7. Create release off of `hotfix/6.5.2` called Release `6.5.2` with tag `v6.5.2`
8. Merge branch `hotfix/6.5.2` into `develop` (fixing potential conflicts if any)
9. Delete branch `hotfix/6.5.2` 
