# Ways to Contribute
The Open Systems Pharmacology Project is an open source project and we encourage contributions. 

Here are some ways ***you*** can contribute:

* by [submitting new ideas or features](#new-feature--feature-change-requests)
* by [submitting new models](#models)
* by providing use cases for the platform qualification
* by writing [tutorials](http://www.open-systems-pharmacology.org/#tutorials)
* by [reporting bugs](#reporting-a-bug)
* by [fixing bugs](#bug-fix-contributions)
* by implementing new features (e.g. new algorithms)
* by commenting on ongoing discussions
* by [writing or editing documentation](https://docs.open-systems-pharmacology.org/how-to-contribute)
* by writing tests
* by refactoring code (no patch is too small: fix typos, clean up inconsistent whitespace, ...)
* by reviewing pull requests
* by verifying issues
* by beta testing prerelease versions

## Reporting a bug

If you find a bug in any of our tools, you can report that bug to the correct issue tracker on GitHub :
* [PK-Sim](https://github.com/Open-Systems-Pharmacology/PK-Sim/issues)
* [MoBi](https://github.com/Open-Systems-Pharmacology/MoBi/issues)
* [Matlab-Toolbox](https://github.com/Open-Systems-Pharmacology/Matlab-Toolbox/issues)
* [R-Toolbox](https://github.com/Open-Systems-Pharmacology/R-Toolbox/issues)
* [Installation Validator](https://github.com/Open-Systems-Pharmacology/InstallationValidator/issues)

The first step when reporting a bug is to search the existing issues for duplicates. If you find a bug report that describes what you have found, you can add a 'me too' or +1 to the existing issue and make any helpful comments here.

If you don't find an existing issue that matches, then you should submit a new issue to the tracker. It is important to create an issue report that makes it easy to reproduce the issue. 

Your bug report should have the following characteristics in all cases:

1. A clear title describing the problem briefly
1. A clear description detailing the preconditions as well as all the steps required to reproduce the bug
1. A description of the expected behavior and the observed behavior


Screenshots can be very helpful and should be included if possible.
It is also a good idea to include a small publicly accessible project where the issue is reproducible.

### Issue report template
--- copy from here and insert into issue description ---

[Short description of problem here]

**Reproduction Steps:**

1. [First Step]
2. [Second Step]
3. [Other Steps...]

**Expected behavior:**

[Describe expected behavior here]

**Observed behavior:**

[Describe observed behavior here]

**Screenshots **

Insert screenshots here.

--- copy to here and insert into issue description ---

Stay active in any follow-up discussions for the issue you have reported someone may be able to help.

## New feature / feature change requests

If you have an idea of a new feature or feature change that you would like to see implemented, the first step is to create a new issue in the corresponding issue tracker (see above) to start a discussion. 

The purpose of the new entry is for the community to discuss the possibilities of the change and agree on a plan and possibly on the implementation strategy.

That does not mean that the next step is certainly a scheduled release date for your proposed new feature. But those are the minimum requirements for consideration.

You can also implement the feature on your own fork (see the steps for implementing a contribution below) and propose those changes back via pull request, however positive feedback via community discussion over feature additions or changes are still required.

You should have a look at the [coding standards](CODING_STANDARDS.md) before implementing and proposing code changes.

## Bug fix contributions:

You will implement a bug fix in your own private fork of the repository, then submit the proposal back to the original repository via pull request.

You should have a look at the [coding standards](CODING_STANDARDS.md) before implementing and proposing code changes. 

For your first few contributions to the Open Systems Pharmacology project, consider implementing an issue labeled 'help wanted'.

Note that for a contribution to be accepted, the new code should be adequately covered by automated unit tests. If it is not possible to write unit tests for all or part of the contribution, a note explaining why none were included should be added to the pull request.

### Getting the code
1. Fork your own copy of the repository to your account
1. Clone your fork of the repository onto your development computer

### Making your changes
1. Branch from *develop* and start working on implementation
1. Commit changes
1. Push to your own fork of the repository using "git push"

### Proposing your changes
1. Now you will create a pull request using the Pull Request button
1. Select your fork as the compare fork
1. Select the *develop* branch of the upstream repository that was originally cloned as the base fork
1. Describe your changes in the pull request
1. Submit the pull request for consideration

## Community Discussion

A great way to be involved with the development of the Open Systems Pharmacology project is to participate in discussions about the product. Ask your questions, contribute to the ideas for new features, support others by answering questions

## Models

Contribute models to the open source [model repositories](http://osp-models.open-systems-pharmacology.org). 
