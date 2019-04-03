
# _Tips for the Team, from the Team_

_This is the section where team members (students, programmers, staff, and
postdocs) may write your own contributions to share with each other and 
future members of the group. Feel free to add your own contribution or make corrections or enhancements those that already exist. **Be sure to claim attribution for new entries. additions and corrections that you make.**_

## Coding Best Practices

1. When assigning a directory path to an environment variable, specify the path without a trailing slash ( e.g. _DIR=/home_ rather than _DIR=/home/_ ) (Toby Ault, updated Rick Moore) 
    - also, when using variables in a directory path
    ( e.g. _PATH=\${DIR1}/\${DIR2}_ rather than _PATH=\${DIR1}/${DIR2}/_ )

2. Indentation in Python code developed for ECRL should always be 4 spaces, not a tab. Both EMACS and VIM allow you to specify a number of actual spaces to add when the tab key is pressed. (Rick Moore)
    - **Why ?** The width of tab indentation is often different among editors. A tab may simulate 2 spaces, 4 spaces or even 8 spaces depending on the default settings of the editor, but to Python it is one single tab character.
        - One consequence is that shared code often appears differently in different editors, when it is printed or _**when viewed on GITHUB**_ than it does in the original editor.
        - Code written by one person and updated by another may fail with **IndentationError**s that are not obvious when looking at the code (e.g. _**tabbed code may appear to be indendented four spaces when previous code is indented 4 physical spaces, but they are not equivalent**_)

