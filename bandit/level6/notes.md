# The find command

In linux, the find command is a very useful tool for locating specific files
with specific file properties

For this challenge, we are looking for a file that is
human-readable
1033 bytes
not executable


One of the most helpful commands when it comes to researching different
commands is the "man" command

"man" lets you see every option avaliable for the command you're trying to run. However, this may not always be the case for very specific commands.

doing "man find", helps us find the command flags that we are looking for

[This is to specify type](./bandit06type.png)
- f is for regular file, which also means its human readable
[This is to specify size](./bandit06size.png)
[This is to specify whether or not the file is an executable](./bandit06executable.png)


Putting it all together then...

"find inhere -type f -size 1033c ! -executable"

**the ! indicates NOT, because we are looking for a non executable**
