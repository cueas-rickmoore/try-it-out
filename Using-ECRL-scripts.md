# ECRL Python Tools Users Guide

ECRL Python tools simplify creation of both personal and shared Anaconda Python environments on computers running Linux and MacOSX operating sustems.

# Scripts 
> found in $ANACONDA_COMMON_ROOT/scripts (see sectionon Environment Variables below)

## anaconda.sh
This bash script creates convenience functions and sets the default values for environment variables descriped in the previous section. Though it was written for the convenience of the ECRL team, the values of these variables can be easily changed to suit a different development environment.

**Usage Option 1**
source **anaconda.sh** from the directory where the global ECRL tools are installed, for example : 
* source /dsts2/anaconda/scripts/anaconda.sh

**Usage Option 2**  Make a copy of **anaconda.sh** in your home directory and source it in your **_.bashrc_** or **_.profile_**

**Usage Option 3**  **anaconda.sh** may be pre-installed on servers commonly used by the team and then be automatically sourced when you login.

**NOTE**
> If you need to change where your personal environments are installed :
* source **anaconda.sh** inside your **_.bashrc_** or **_.profile_**
* then add a line to change the value of **ANACONDA_USERS_ROOT** to point to the directory where your environments are to be installed.

## conda_create
The **_conda_create_** script does the heavy lifting required to create a variety of new Anaconda Python environments.

**Supported types of installs**
1. **_basic_** - this is the default. It will install the most basic set of packages required for a project. The default pacckage list is read from the file **$ANACONDA_COMMON_ROOT/scripts/anaconda-base-pkgs.txt**.
2. **_file_** - will read the list of packages to install from a file that you supply. This may be either a simple text file with one package name per line or a file with entries in **YAML** format.
    > You can create a YAML file for this purpose from any existing environmet using.
    * **conda env create --file environment.yml**
3. **_anaconda_** - will install the complete Anaconda distribution into the new environment. Beware, this environemnt will take as much as 5GB on disk for Python 2 and 3GB for Python 3.

**Usage**

**_conda_create_ [-a -h -f -p -s] -n _name-of-environment_ ...**
* REQUIRED arguments
    * **-n _name-of-environment_** &nbsp;&nbsp;:&nbsp;&nbsp;name for the new environment

* OPTIONAL arguments
    * **-a** &nbsp;&nbsp;:&nbsp;&nbsp;create a full Anaconda environment
    * **-h** &nbsp;&nbsp;:&nbsp;&nbsp;help
    * **-f _path-to-file_** &nbsp;&nbsp;&nbsp;create an environment using packages specified in a file
    * **-p** &nbsp;&nbsp;:&nbsp;&nbsp;version of Python to install 
        * defaults to version found in the **PYTHON3_DEFAULT** environment variable
    * **-s** &nbsp;&nbsp;:&nbsp;&nbsp;environment is to be shared
        * by default, all environments are personal
        * you must have admin privileges to create shared environments
        * NOTE: shared environments ""_anaconda2.7_"" and "_anaconda3.6_"" currently exist

* ... is a space separated list of additonal packages you wish to install

### Environment Variables
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
