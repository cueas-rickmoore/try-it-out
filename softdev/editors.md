# Pick your editor and learn it well

There is nothing more important than **_"liking"_** your code editor,
so make sure you choose when you can _enjoy_ using. Having said that,
there are 2 that stand out from the rest : **_Emacs_** and **_Vim_**
 
Both are available on every operating system in existance.
Besides the portability, they have the added advantage of supporting
dozens of programming languages right out of the box. Both support
customization of fonts, colors, spacing, etc. And both have very
active communities that provide help and guidance. 

install packages for working with certain
environments. In Emacs, these are called "modes."

## Emacs

I use Emacs because it is what I started using in graduate school. One
advantage of doing everything in Emacs is that I can integrate several
different software environments that are generally useful for climate
research. For example, with [python-mode]{.roman} I can start a python
shell from a python script and send commands to that shell. At the same
time I might be working on scripts in Matlab, NCL, and shell -- as well
as latex files like this one. All of these have their own modes in
Emacs, which makes editing files for each of these programs vastly less
complicated than it otherwise would be.

https://www.gnu.org/software/emacs/manual

-   ### Tmux
    Tmux is installed on most of our systems. It is a powerful tool because
    it lets you keep a terminal running on a remote sever even when you have
    logged out. This is especially useful if you are a user of Matlab(R),
    which you should not be if you can avoid it.

-   ### AucTex
    Once you have Emacs, you can install AucTex. The easiest way to do this
    is by installing using the [M-x]{.roman} then [package-install]{.roman}.

-   ### flyspell-mode
    If you are writing in LaTeX, it is good to have a tool like flyspell
    (which uses aspell) so that words that are misspelled can easily be
    corrected with keystrokes: <https://www.emacswiki.org/emacs/FlySpell>.

## VIM
-   ### vim-spell

    In the latest version of vim, you can enter \"set spell\" to highlight
    misspelled words. 
    
This is a good reference for vim:
<http://www.atmos.albany.edu/daes/atmclasses/atm350/vi_cheat_sheet.pdf>

