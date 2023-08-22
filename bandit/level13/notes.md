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
