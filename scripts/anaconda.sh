
# source this file near the top of your personal .bashrc, for example
# [[ -f /path/to/anaconda.sh ]] && . /path/to/anaconda.sh

# assumes "ecrl-tools" was downloaded from bitbucket to your home directory
# and Anaconda environments will also be installed in your home directory
# make appropriate edits in this is not the case

# save original system path
export SYSTEM_PATH=$PATH
if [ -f /usr/bin/python ] ; then
    export SYSTEM_PYTHON=/usr/bin/python
else
    export SYSTEM_PYTHON=`which python`
fi
export PYTHON2_DEFAULT=2.7
export PYTHON3_DEFAULT=3.6
export BASIC_PYTHON_PKGS="numpy scipy pandas xarray h5py netcdf4 matplotlib pillow"

export ANACONDA_SHARED_ROOT=/opt/anaconda
export ANACONDA_SHARED_ENVS=$ANACONDA_SHARED_ROOT/venvs
export MINICONDA2_SHARED_ROOT=$ANACONDA_SHARED_ROOT/Miniconda2
export MINICONDA3_SHARED_ROOT=$ANACONDA_SHARED_ROOT/Miniconda3

export ANACONDA_HOME_ROOT=$HOME/Anaconda
export ANACONDA_HOME_ENVS=$ANACONDA_HOME_ROOT/venvs
export MINICONDA2_HOME_ROOT=$ANACONDA_SHARED_ROOT/Miniconda2
export MINICONDA3_HOME_ROOT=$ANACONDA_SHARED_ROOT/Miniconda3

activate () {
    arg="${1//-/}"
    if [ $arg = "s" ] ; then
        shared=true
        venv_name=$2
        echo $shared $venv_name
    else
        shared=false
        venv_name=$arg
        echo $shared $venv_name
    fi
    if [ $venv_name = "Miniconda2" ] ; then
        if [ $shared = true ] ; then
            python_venv=$MINICONDA2_SHARED_ROOT
        else
            python_venv=$MINICONDA2_HOME_ROOT
        fi
    elif [ $venv_name = "Miniconda3" ] ; then
        if [ $shared = true ] ; then
            python_venv=$MINICONDA3_SHARED_ROOT
        else
            python_venv=$MINICONDA3_HOME_ROOT
        fi
    else
        if [ $shared = true ] ; then
            python_venv=$ANACONDA_SHARED_ENVS/$venv_name
        else
            python_venv=$ANACONDA_HOME_ENVS/$venv_name
        fi
    fi
    # activate any active environment
    if [ ! -z "$CONDA_PREFIX" ] ; then
        source $CONDA_PREFIX/bin/deactivate
    fi
    source $python_venv/bin/activate $python_venv
    export PS1="$venv_name env >> "
}

deactivate () {
    if [ ! -z "$CONDA_PREFIX" ] ; then
        source $CONDA_PREFIX/bin/deactivate
        dirname=`pwd`
        dirname=`basename $dirname`
        export PS1="$dirname >> "
    else
        echo "No Anaconda environment is active."
    fi
}
