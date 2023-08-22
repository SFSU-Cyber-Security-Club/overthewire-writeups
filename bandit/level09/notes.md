# Understanding sort and uniq - praise Richard Stallman

We are given a file which contains an unsorted list of lines. We are to find one that is never 
repeated.

To do this we must now use what is known as pipes for the linux operating system

## Pipes and redirects

Pipes and Redirects 

Pipes and redirects came when unix began to commercialize itself in the 1973
Thank you Douglas Mcllory

Essentially what it allows you to do is to redirect the output of one command into the input of 
another. This is especially useful when chaining multiple commands together to automate data transfer
quickly and effiecently. Pipes and redirection is a very convenient tool for software developers and
hackers alike.

For example:

- To redirect output of a command to a file for safe keeping

{command} {arguments or whatnot} > {filename of your choosing}

- To redirect output of a command to another command 

{command} {arguments or whatnot} | {command} 

- To feed a file into a command to act as an argument
 
{command} < {file containing arguments}


##############################################################
Knowing that we can use the man tool to discover new commands
we can check out "sort" and "uniq" to find what we're looking for

uniq prints lines that are unique and ignores repeated 
however uniq only checks for adjacent lines, which is why
sort is required

"sort" as the name implies, 
sorts all the lines through some pattern
if no pattern is specified then it sorts alphabetically

uniq has two flags we can use to indicate that we only want
the line that occurs only once. We use -c to count how many times that
line has been repeated, and -u to check if that line is different from the others

We chain these two lines together with pipes  to get our special result

sort data.txt | uniq -cu


