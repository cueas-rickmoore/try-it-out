# Basic Linux/Mac OS command line (GNU version)

ECRL tools are developed and run on Linux servers and MacOS
computers. So a basic knowledge of Linux's GNU Bash commands
and scripting tools is essential for developing project code
and controlling software execution. 

[Bash documentation ooline](bashdocs.md)


### The terminal command line prompt on machines managed by Cornell IT has the machine name followed by the user's NetID and 2 right arrows :

>  **AG-EAS-12345678: mynetid >>**

# Command line fundamentals

## Use the  ```cd```  command to navigate directories :

>   \>\> ```cd pyhome```  go to the ```pyhome``` sub-directory of the current duirectory.

```$HOME```  is an environment variable that contains the path to your home driectory.

>   \>\> ```cd $HOME\code\myproject```    full path to a directory in you home directory.

### _**HINT :** you don't have to type the full directory name._  If you type the first few charcters, you can press the TAB key to get the full name of the directory.

>   \>\> ```cd $HOME\code\myp```  _then press TAB_
>   \>\> ```cd $HOME\code\myproject```

### Use  ```~```  as a shortcut to $HOME (your home directory)
>   \>\> ```cd ~\code\myproject``` 

go to the ```myproject``` sub-directory of your home_

>   \>\> ```cd ~```  _to return to your home directory_

### _**WARNING**_ ```man cd```  displays very limited information for all 100+ built-in Linux commands in just over 160 lines of output.

### **_For useful documentation of  ```cd```,  read the  [cd docs](https://ss64.com/bash/cd.html) online._**

----------

## Use the ```ls``` command to list the contents of your current working directory :
>   \>\> ```ls```

    code           pyfunc1.pyc    pyfunc2.pyc
    pyfunc1.py     pyfunc2.py

### **List files in the **code** subdirectory**

>   \>\> ```ls code```

    data1.nc
    data2.nc
    
### **List files with key descriptive details**

>  \>\> ```ls -l```

    -rw-r--r--   1 netid  ECRL Users      0 Jul  8  2015 __init__.py
    -rw-r--r--   1 netid  ECRL Users    153 Nov 26 15:40 __init__.pyc
    -rw-r--r--   1 netid  ECRL Users  15698 Apr  7  2018 config.py
    -rw-r--r--   1 netid  ECRL Users   8285 Jan  3 17:14 config.pyc
    drwxr-xr-x   4 netid  ECRL Users    136 Nov 26 14:52 docs
    -rw-r--r--   1 netid  ECRL Users   6036 Oct  2  2015 factory.py
    -rw-r--r--   1 netid  ECRL Users   5914 Nov 26 15:40 factory.pyc
    -rw-r--r--   1 netid  ECRL Users   4489 Sep  6  2017 grid.py
    -rw-r--r--   1 netid  ECRL Users   4388 Nov 26 15:40 grid.pyc

<image align="right" src="permissions-etc.png">



### **The first column shows type and permissions for each entry in the list.  If the first digit is  ```-```,  the item is a file.  A  ```d```  in the first digit indicates a directory.  A  ```l```  in the first digit indicates a link.**



### **The next 9 digits describe the item's Read/Write/Execute permissions.  Available permissions are indicated by sequences of the 3 letters  ```rwx``` .  A  ```-```   indicates no permission for the that action. For example  ```r-x```  allows read and execute proveleges but blocks write. **

### **_Permissions are triplets with separate permissions for the Owner, Group and Others (world).  For more detailed documentation for permissions read about  [permissions syntax](https://ss64.com/bash/syntax-permissions.html) online._**



### **Filenames beginning with ``.`` are hidden from ```ls``` by default. You can use the ```-a``` option to display "hidden" files.** 

> ```\>\> cd ~```   (go to your home directory)

> ```\>\> ls -a```

    .                   .condarc          .vim
    ..                  .config           .viminfo
    .Trash              .gitconfig        .vimrc
    .bash_history       .ipython          .vscode
    .bash_profile       .jupyter          bin
    .bash_sessions      .matlab           Desktop
    .bashrc             .spyder2          Documents
    .conda              .ssh              Downloads

>  \>\> ```ls -al```   (detailed list of all items)

    drwxr-xr-x@  91 netid  ECRL Users   3094 Apr  2 10:45 .
    drwxr-xr-x   12 root   admin                   408 Oct 24 11:58 ..
    drwx------  263 netid  ECRL Users   8942 Apr  1 17:22 .Trash
    -rw-------    1 netid  ECRL Users  14909 Apr  1 16:31 .bash_history
    -rwxrwxr--    1 netid  ECRL Users    276 Jan 31 13:52 .bash_profile
    drwx------  109 netid  ECRL Users   3706 Apr  2 10:36 .bash_sessions
    -rw-r--r--    1 netid  ECRL Users   1195 Apr  1 14:40 .bashrc
    drwxr-xr-x    5 netid  ECRL Users    170 Feb 19 15:03 .conda
    -rw-r--r--    1 netid  ECRL Users      3 Nov 12 13:54 .condarc
    drwx------    9 netid  ECRL Users    306 Jan 29 12:03 .config
    -rw-r--r--    1 netid  ECRL Users    179 Aug 13  2018 .gitconfig
    drwxrwxr-x@   8 netid  ECRL Users    272 Nov  2 14:07 .ipython
    drwxr-xr-x    4 netid  ECRL Users    136 Sep 10  2015 .jupyter
    drwxr-xr-x    4 netid  ECRL Users    136 Nov  6 10:58 .matlab
    drwxrwxr-x@  25 netid  ECRL Users    850 Nov  6 10:58 .spyder2
    drwx------    9 netid  ECRL Users    306 Mar  4 11:50 .ssh
    drwxrwxr-x@   9 netid  ECRL Users    306 Mar 18 11:19 .vim
    -rw-------    1 netid  ECRL Users  30063 Apr  2 10:45 .viminfo
    -rwxrwxr--    1 netid  ECRL Users   5578 Aug 16  2017 .vimrc
    drwxr-xr-x    4 netid  ECRL Users    136 Jan  3  2018 .vscode
    drwxr-xr-x   28 netid  ECRL Users    952 Apr  1 17:17 bin
    drwx------+  54 netid  ECRL Users   1836 Mar 18 10:58 Desktop
    drwx------+  13 netid  ECRL Users    442 Jan 25 15:32 Documents
    drwx------+  46 netid  ECRL Users   1564 Apr  1 13:11 Downloads


### **_For more detailed documentation for the  ```ls``` command use  ```man ls```  or read the  [ls docs](https://ss64.com/bash/ls.html) online._**
---------

## Use the  ```mkdir```  command to create a new directory

> \>\> ```mkdir ecrl```

### **```mkdir```  can also create a path with multiple directories**

> \>\> ```mkdir ecrl/spring/2019```

### **_For more detailed documentation of the  ```mkdir``` command use  ```man mkdir```  or read the  [mkdir docs](https://ss64.com/bash/mkdir.html) online._**
----------

## Use   ```chmod```  and  ```ls```  to manage file and directory permissions
### **Use  ```ls -l```   to show current permissions**

    -rwxr-xr-x    1 netid  ECRL Users      0 Jan 19 12:59 file1.txt

### **Give write permission to all members of the ERCL Users gtoup**

> \>\> ```chmod g+w file1.txt```

> \>\> ```ls -l``` 

    -rwxrwxr-x    1 netid  ECRL Users      0 Jan 19 12:59 file1.txt

<div align=center>
<image src="managing-permissions.png">
</div>

### **_For documentation of the  ```chmod``` command use  ```man chmod```  or read the  [chmod docs](https://ss64.com/bash/chmod.html) online._**
----------

