# Continuation of the find command - getting creative

Although this challenge can also be done with the "find" command
I encourage you to try out other ways to find the file in question

The file is owned by user bandit7
owned by group bandit6
and is 33 bytes in size

because the file can be located **anywhere** in the filesystem, you must
specify "/" which is the root directory aka where everything branches off from.

"find / -group bandit6 -user bandit7 -size 33c"

You may notice that there are a lot of lines being printed onto the terminal
these are errors indicating that you can't read those files because you do not have permission to

We'll talk about this in the later challenges but for now you can 
filter those out by typing the following at the end of the command

"2\>/dev/null"


