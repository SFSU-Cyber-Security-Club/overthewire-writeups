# Simply type

- ls

# you'll see a "readme" file in the directory you're in
# to see what's inside, simply type

- cat readme

# Use that flag to connect to the next bandit level
# The next time you ssh you will be prompted a password which will be the readme


## Quick overview of the ssh command

   ssh -p 2220 bandit0#@bandit.labs.overthewire.org
   |   |   |      |    |        |
   |   | (port #) |    |--------domain location
command|         user
       |
     specify custom port 
     (usually ssh is bound to port 22)
