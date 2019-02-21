
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
export PYTHON_ENV_DEFAULT=3.6

export ANACONDA_COMMON_ROOT=/data2/anaconda
export ANACONDA_DOWNLOAD_ROOT=$ANACONDA_COMMON_ROOT/Downloads
export ANACONDA_SHARED_ROOT=$ANACONDA_COMMON_ROOT/shared
export ANACONDA_USERS_ROOT=$ANACONDA_COMMON_ROOT/users

export MINICONDA2_DIRPATH=$ANACONDA_COMMON_ROOT/Miniconda2
export MINICONDA3_DIRPATH=$ANACONDA_COMMON_ROOT/Miniconda3

activate () {
    shared=false
    # arg="${1//-/}"
    arg=$1
    if [ $arg = "-s" ] ; then
        shared=true
        venv_name=$2
    elif [ $arg = "-u" ] ; then
        user_name=$2
        venv_name=$3
    else
        user_name=$LOGNAME
        venv_name=$arg
    fi
    if [ $venv_name = "Miniconda2" ] ; then
            python_venv=$MINICONDA2_DIRPATH
    elif [ $venv_name = "Miniconda3" ] ; then
            python_venv=$MINICONDA3_DIRPATH
    else
        if [ $shared = true ] ; then
            python_venv=$ANACONDA_SHARED_ROOT/$venv_name
        else
            python_venv=$ANACONDA_USERS_ROOT/$user_name/$venv_name
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
