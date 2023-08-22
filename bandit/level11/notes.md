# Base64 encoding 

Base64 encoding is an encoding scheme proposed by -----
to provide a reliable way of communicating data over a network

one can send data over the wire :) , but this data has a chance to become corrupted, 
thus born the base64. There's also base32 and base16 but no need to get into that

You sometimes see a trailing "=" for a base64 encoded message because the message length
always has to be divisable by 3 in order to be a valid base64

There's a linux command line tool called base64.

if you want to decode a message, you can simply do 
===================================================

base64 -d {file here}
