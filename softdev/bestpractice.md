
Member Tips {#sec:tips}
===========

This is the section where you, the students, programmers, staff, and
postdocs, will write your own contributions for each other and for
future members of this group. I have populated this section with a few
thoughts and suggestions of my own, but you should feel free to modify
these and add your own.



Pick your editor and learn it well
----------------------------------

You should learn to use Emacs or Vi. One of the advantages of either of
these is that you can install packages for working with certain
environments. In Emacs, these are called "modes."

Emacs
-----

I use Emacs because it is what I started using in graduate school. One
advantage of doing everything in Emacs is that I can integrate several
di3fferent software environments that are generally useful for climate
research. For example, with [python-mode]{.roman} I can start a python
shell from a python script and send commands to that shell. At the same
time I might be working on scripts in Matlab, NCL, and shell -- as well
as latex files like this one. All of these have their own modes in
Emacs, which makes editing files for each of these programs vastly less
complicated than it otherwise would be.

Tmux
----

Tmux is installed on most of our systems. It is a powerful tool because
it lets you keep a terminal running on a remote sever even when you have
logged out. This is especially useful if you are a user of Matlab(R),
which you should not be if you can avoid it.

AucTex
------

Once you have Emacs, you can install AucTex. The easiest way to do this
is by installing using the [M-x]{.roman} then [package-install]{.roman}.

flyspell-mode
-------------

If you are writing in LaTeX, it is good to have a tool like flyspell
(which uses aspell) so that words that are misspelled can easily be
corrected with keystrokes: <https://www.emacswiki.org/emacs/FlySpell>.

vim-spell
---------

In vim, in the latest version, you can enter \"set spell\" to highlight
misspelled words. This is a good reference for vim:
<http://www.atmos.albany.edu/daes/atmclasses/atm350/vi_cheat_sheet.pdf>

git
---

Make sure to setup a .gitignore file that ignores files that will
clutter up your repo. It is best practice to only track raw text code
files with git. Ignore image files (\*.jpg, \*.eps, \*.pdf), log files
(\*.txt, \*.log, \*.out), and most hidden files (.\*) with the possible
exception of .gitignore. Using git add -a (all) with add everything so
it is important to have a perfect .gitignore before getting used to
using this command.

It *can* be useful to have a script that handles the add, commit, push
sequence, but if you do that, you miss some of the power and control
that git gives you over our repo.

anaconda
--------

Anaconda is utility for setting up a self-contained python environment.
This means with anaconda you can install any python module you need
without getting admin permissions. Especially useful on monsoon,
bluesky, cheyenne, etc. To set this up go through the following steps:

1.  Get into the directory where you want to download anaconda, I did
    this in my home directory (i.e. `cd $HOME`).

2.  If you are on a Linux system, type:

            wget https://repo.anaconda.com/archive/Anaconda3-5.2.0-Linux-x86_64.sh

    If you are on a Mac:

             wget https://repo.anaconda.com/archive/Anaconda3-5.2.0-MacOSX-x86_64.sh

    This will download the Anaconda installer script and will take a few
    minutes.

3.  Type `bash Anaconda2-5.2.0-Linux-x86_64.sh`.

    This will run the Anaconda installer script

4.  After anaconda has installed, open your bashrc file (i.e.
    `vim $HOME/.bashrc`) and add the line:

              source /home/\$USER/anaconda2/etc/profile.d/conda.sh

    (*Note:* If you installed to a directory other than your home
    directory the path should reflect this.)

5.  Close you bashrc and type `source �/.bashrc`.

6.  Now we will create an anaconda environment. Type:

              conda create --name (name of your environment). 

    I call the environment I use the most `pyn_env`.

7.  Now you can install any module you want to this environment (i.e.
    `conda install scipy -n pyn_env`).

8.  After you have installed all your modules you activate your
    environment with `conda activate pyn_env`.

9.  You should see the name of your environment in the shell now, and
    you can run python scripts as you normally would (i.e.
    `python script.py`)

### Working with multiple environments

Typically you will want to have multiple environments for multiple
different projects, depending on the dependencies, needs, etc.. of those
projects. So, for example you will probably have an `ecrl` environment,
but you might also want to make your own `user` environment, or
`default`, or `devel`. The key is that by having multiple environs., you
won't end up installing stuff that ruins one of them! To create a new
environment using conda, simply type:

          conda create --name <your user id>

To start using this environment, type:

         conda activate <your environment name>
