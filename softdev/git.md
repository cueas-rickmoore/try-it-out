
# The ECRL team uses  ```Git```  and  ```Bitbucket```  to manage our code base

## Bitbucket
### **_Repositories for all code developed by the ECRL Team live within Atlassian on Bitbucket_**
*   [Bitbucket repository list](https://bitbucket.org/dashboard/repositories)   You must be a member of the team to access the repository.
*   [ECRL tools repository](https://bitbucket.org/ecrl/ecrl-tools/src/master)   The ECRL team information repository.

## Using the Git distributed revision control system
----------

[GIT documentation](https://git-scm.com/docs/git)

[GIT cheatsheet](https://github.github.com/training-kit/downloads/github-git-cheat-sheet.pdf)
[Interactive GIT cheatsheet](http://ndpsoftware.com/git-cheatsheet.html#loc=remote_repo) 


[git config](https://git-scm.com/docs/git-config)   Get and set repository or global options


## Ignoring files in your local repository
### **_It is best practice to track only raw code files with git. So make sure to create a  ```.gitignore```  file that ignores files clutter in your repo._**

*   [Git's gitignore documentation](https://git-scm.com/docs/gitignore)
*   [Atlassian's gitignore documentation](https://www.atlassian.com/git/tutorials/saving-changes/gitignore)

### **Specifically ignore :**
* data files (\.h5, \.nc, \.grb, \.grib, \.grib2)
* compiled code (.pyc, .pyo, .pyd, .o, .so, .dll, .class)
* files generated at runtime (\.log, \.out, \.lock, or \.tmp)
* files left behind by editors (\.~, \.rev)
* files created by the network (\.nfs,\.nfs*)
* most hidden files (.\*) 
* ignore \*.txt unless you keep notes in \.txt
* ignore image files (\*.jpg, \*.png, \*.gif, \*.eps, \*.dvi, \*.pdf) unless you are\:
    * using images in documentation
    * developing jupyter notebbooks
    * creating an interactive desktop application
    * building a web site
### **_If you chose to hide all hiddon files using  ```.*```,  be sure not to remove your  ```.gitignore```  file by adding  ```!.gitignore```  to the end of it._**

## **_more to come_**
Using git add -a (all) will add everything so
it is important to have a perfect .gitignore before getting used to
using this command.

It *can* be useful to have a script that handles the add, commit, push
sequence, but if you do that, you miss some of the power and control
that git gives you over our repo.

