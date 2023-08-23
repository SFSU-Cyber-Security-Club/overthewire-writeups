# Hex Dumps and Compressions

This challenge involves a couple of topics and technicals that you must overcome all at once
Fortunately, the "man" sidekick comes around again to help with this process!

This is how learning previous tools helps to build and discover more.

We are given a file, specifically a hex dump of what the file originally was.
A hex dump is essentially a way to view the specific bytes and binary in a human
readable format. This is often useful to compare with other files, as well as spot 
similarities or discrepancies.

The challenge states that this is a hexdump of a **compressed** file

A compressed file is a file that has been packed with a special encoding scheme
that helps to reduce the file size and make it more compact

compressed files (and really any file) usually contain a magic sequence of bytes 
to indicate what type the file is. This sequence of bytes are usually called magic numbers

The idea is to somehow convert this back to the compressed file it originally was, because
we can't decompress it at its hexdumped state. what do we do?

## Introducing xxd

This is most likely what the author originally used to create the hexdump, 
and we can use it again to revert it back to the original file

-- Try "man xxd"

xxd has the revert feature by specifying the "-r" flag

xxd -r {filename} 

executing this command results in a new type of file, however the result will be printed on screen
We want to apply our previous knowledge of pipes and redirections to redirect the stdout to a file

on the bandit environment, in order to create new files, we can use the /tmp directory - /tmp is a common
linux directory for its filesystem, used to store files that can be delete upon shutdown and is "temporary"

So lets make a directory there

mkdir /tmp/{name}

So now all together .. 

xxd -r {filename} > /tmp/{name}

## Introducing "file"

Yes, file is a command as well, and its purpose is very useful. Remember when we talked about "magic numbers" that are used to recognize the file's type? The file command uses this feature to help us identify the type of the file.

Once we've reverted the file, simply type "file {file}" to identify the type and uncover the compression method

file {name}

## Introducing gzip, tar, zip - compressions

Since this file has been compressed repeatedly, it may be a good idea to automate this process...
but to do this by hand, one will need to type out these commands in succession 

gzip -d {file}
dzip2 -d {file}
tar -xf {file}

It would probably be a good time to introduce yourself to python if you're not already familiar, because 
creating scripts to automate these types of processes is one of the defining principles of an elite hacker





