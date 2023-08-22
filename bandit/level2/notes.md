# This problem involves understanding the absolute path, relative path, and file descriptors 
The reason why you can't address this file directly by typing "cat -" is because the terminal inteprets this special character as stdin, which means standard input and is generally used around pipes which is not important to talk about right now

On the linux filesystem, every directory contains a ".." and "." file. These two files refer to the ".."-previous directory, and "." current directory

You can use relative addressing to specify the filename "-"

Example: cat ./-




