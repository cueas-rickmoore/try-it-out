# ECRL Python Tools Users Guide

ECRL Python tools simplify creation of both personal and shared Anaconda Python environments on computers running Linux and MacOSX operating sustems.

### Environment Variables
Several environemnt variables specific to this toolset are created by the anaconda.sh script. These environment variables are used by the utility scripts described in the next section. Usage of anaconda.sh is documented in the **_Scripts_** section below.

**PYTHON2_DEFAULT** = 2.7
> Default version of Python to be used when creating new Python 2 environments.
      
**PYTHON3_DEFAULT** = 3.6
> Default version of Python to be used when creating new Python 3 environments.

**BASIC_PYTHON_PKGS** = "numpy scipy pandas xarray netcdf4 matplotlib pillow"
> The minimum set of packages to be installed in a basic environment. Override this environment variable if you have a personal set of defaults.

**ANACONDA_SHARED_ROOT** = /opt/anaconda
> Root directory used for shared Anaconda Python.

**ANACONDA_SHARED_ENVS** = $ANACONDA_SHARED_ROOT/venvs
> Directory where all shared environments will be created.

**MINICONDA2_SHARED_ROOT** = $ANACONDA_SHARED_ROOT/Miniconda2
> Direcotry where shared Miniconda 2 is installed. **Minicoda2** is used by the scripts to create and manage Python 2 environments. 

**MINICONDA3_SHARED_ROOT** = $ANACONDA_SHARED_ROOT/Miniconda3
> Directory where shared Miniconda 3 is installed. **Minicoda3** is used by the scripts to create and manage Python 3 environments. 

**ANACONDA_HOME_ROOT** = $HOME/Anaconda
> Root directory used for peronal Anaconda Python.

**ANACONDA_HOME_ENVS** = $ANACONDA_ROOT/venvs
> Directory where personal environments will be created.

**MINICONDA2_HOME_ROOT** = $ANACONDA_SHARED_ROOT/Miniconda2
> Directory where personal Miniconda2 is installed. By default, the shared instance of Miniconda is used to create persoanl environments.

**MINICONDA3_HOME_ROOT** = $ANACONDA_SHARED_ROOT/Miniconda3
> Directory where personal Miniconda3 is installed. By default, the shared instance of Miniconda is used to create personal environments.

## Scripts

## anaconda.sh
This bash script creates convenience functions and sets the default values for environment variables descriped in the previous section. Though it was written for the convenience of the ECRL team, the values of these variables can be easily changed to suit a different development environment.

**Usage Option 1**  _anaconda.sh_ may be pre-installed on machines commonly used by the team and then be automatically sourced when you login. This is the case on **_Monsoon_** and **_c3po_**.

**Usage Option 2**  **source** the script in the directory where the global ECRL tools are installed, typically : 
> source /opt/anaconda/scripts/anaconda.sh

**Usage Option 3**  Make a copy in your home directory and source it in your **_.bashrc_** or **_.profile_**

**NOTE**
> If you need to change one (or a few) of the default environment variables :
* first source the base _anaconda.sh_ inside your **_.bashrc_** or **_.profile_**
* then add the new value(s) to match your project's environment

## conda_create
The **_conda_create_** script is a shortcut for creating a variety of new Anaconda Python environments.

**Supported types of installs**
1. **_basic_** - thiis is the default. It will install the most basic set of packages required for a project. Currently tho base packages are numpy, scipy, pandas, xarray, h5py, netcdf4, matplotlib and pillow.
2. **_file_** - will read the list of packages to install from a file that you supply. This may be either a simple text file with one package name per line or a file with entries in **YAML** format.
    > You can create a YAML file for this purpose from any existing environmet using.
    * **conda env create --file environment.yml**
3. **_anaconda_** - will install the complete Anaconda distribution into the new environment. Beware, this environemnt will take as much as 5GB on disk for Python 2 and 3GB for Python 3.

**Usage**

**_conda_create_ [-a -f|--file -p -s] -n|--name ...**
* REQUIRED arguments
    * **-n env_name** &nbsp;&nbsp;:&nbsp;&nbsp;name for the new environment
        * **--name env_name**
* OPTIONAL arguments
    * **-a** &nbsp;&nbsp;:&nbsp;&nbsp;create a full Anaconda environment
    * **-f path-to-file** &nbsp;&nbsp;&nbsp;create an environment using packages specified in a file
        * **--file path-to-file**
    * **-p** &nbsp;&nbsp;:&nbsp;&nbsp;version of Python to install 
        * defaults to version found in the **PYTHON3_DEFAULT** environment variable
    * **-s** &nbsp;&nbsp;:&nbsp;&nbsp;environment will be shared
        * by default, environments are personal
        * you must have admin privileges to create shared environments
* ... is a space separated list of additonal packages to install
