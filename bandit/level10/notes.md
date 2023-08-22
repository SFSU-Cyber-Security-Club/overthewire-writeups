# Printing human-readable characters - strings

Another command that lets us view human readable strings of a file 
is called strings

- strings can be a very useful tool for viewing human readable string for an 
executable file, a regular file, etc

We can pipe strings to grep so that we can get strings that match the description
of having some leading "="s 

strings data.txt | grep "="




