# ECRL Python Tools User Guide

ECRL Python tools simplify creation of both personal and shared Anaconda Python environments on computers running Linux and MacOSX operating sustems. The tools in this package are currently installed on most EAS Servers.

NOTE : these tools will only create ans activate your Anaconda environmwnts. Once activated, you will manage the packages in your environment using Anaonda.com's 
 **_conda_** package management commands (https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-pkgs.html)

# Scripts 
> ECRL tools consists of 3 scripts found in $ANACONDA_COMMON_ROOT/scripts
* see Environment Variables below for more information.

## **_anaconda.sh_**
This bash script creates convenience functions to activate/deactivate environments and also sets the default values for ECRL tool specific environment variables. Though it was written for the convenience of the ECRL team, the values of these variables can be easily changed to suit a different development environment.

**Usage Option 1**
>source **anaconda.sh** from the directory where the global ECRL tools are installed. Either directly on the command line :
> * source /data2/anaconda/scripts/anaconda.sh
> or
> * add the source command above to the end of your **_.bashrc_** or **_.profile_**

**Usage Option 2** 
> make a copy of **anaconda.sh** in your home directory and add it to your  **_.bashrc_** or **_.profile_** 
* source ~/anaconda.sh

**Usage Option 3**
> **anaconda.sh** may be pre-installed on servers commonly used by the team and then be automatically sourced whenever you login.

**NOTE**
> If you want to change where your personal environments are installed :
* copy **anaconda.sh** to your home directory (**Option 2**)
* open **anaconda.sh** in an editor and change the value of **ANACONDA_USERS_ROOT** to the new path
* source **anaconda.sh** inside your **_.bashrc_** or **_.profile_**

## **_conda_create_**
The **_conda_create_** script does the heavy lifting required to create a variety of new Anaconda Python environments. The original script is in 
**$ANACONDA_COMMON_ROOT/scripts/conda_create**, however sourcing anaconda.sh creates a bash alias to that locaton.

**Supported types of installs**
1. **_basic_** - this is the default. It will install the most basic set of packages required for a project. The default package list is read from the file **$ANACONDA_COMMON_ROOT/scripts/anaconda-base-pkgs.txt**. 

2. **_file_** - will read the list of packages to install from a file that you supply. The file contain either simple text with one package name per line or entries in **YAML** format.
    > You can create a YAML file for this purpose from any activated environment using :
    * **conda env create --file environment.yml**

3. **_anaconda_** - will install the complete Anaconda distribution into the new environment. Beware, this environemnt has many packages that most people will never use. And it will require as much as 5GB of disk space for Python 2 and 3GB for Python 3.

**Usage**

>**_conda_create_ [-a -h -f -p -s] -n _name-of-environment_ ...**
* REQUIRED arguments
    * **-n _name-of-environment_** &nbsp;&nbsp;:&nbsp;&nbsp;name for the new environment

* OPTIONAL arguments
    * **-a** &nbsp;&nbsp;:&nbsp;&nbsp;create a full Anaconda environment
    * **-h** &nbsp;&nbsp;:&nbsp;&nbsp;show help
    * **-f _path-to-file_** &nbsp;&nbsp;&nbsp;create an environment using packages specified in a file
    * **-p** &nbsp;&nbsp;:&nbsp;&nbsp;version of Python to install 
        * defaults to version found in the **PYTHON3_DEFAULT** environment variable
    * **-s** &nbsp;&nbsp;:&nbsp;&nbsp;environment is to be shared
        * by default, all environments are personal
        * you must have admin privileges to create shared environments
        * __NOTE__: the shared, full Anaconda environments **_anaconda2.7_** and **_anaconda3.6_** already exist on servers used by ECRL

* ... REQUIRED and OPTIONAL arguments may be followed by a space separated list of additonal packages to install


## Convenience Functions
> created when **anaconda.sh** is sourced

### **activate**
> replaces the standard **_source activate_** with options to manage activation of shared and personal envionments that are stored in different root directories
* activate a shared environment
    * **activate -s _env_name_**
* activate a private environment
    * **activate -p _env_name_**
    * or without the **-p** or **-s**
    * **activate _env_name_**

### **deactivate**
* **_deactivate_** 
    * requires no arguments becuase it takes advantage of Anaconda's built-in environment variables to detect the currenty active environment.


## Environment Variables
Several environemnt variables specific to this toolset are created by the anaconda.sh script. These environment variables are used by the utility scripts described in the next section. Usage of anaconda.sh is documented in the **_Scripts_** section below.

**PYTHON2_DEFAULT** = 2.7
> Default version of Python to be used when creating new Python 2 environments.
      
**PYTHON3_DEFAULT** = 3.6
> Default version of Python to be used when creating new Python 3 environments.

**ANACONDA_COMMON_ROOT**
> Root directory where all Anaconda environments and scripts reside.

**ANACONDA_SHARED_ROOT**
> Directory where shared Anaconda environments are installed.

**ANACONDA_USERS_ROOT**
> Root directory where personal Anaconda environments are installed.

**MINICONDA2_DIRPATH**
> Direcotry where common Miniconda 2 is installed. **Minicoda2** is used by the scripts to create and manage Python 2 environments. 

**MINICONDA3_DIRPATH**
> Directory where shared Miniconda 3 is installed. **Minicoda3** is used by the scripts to create and manage Python 3 environments. 
