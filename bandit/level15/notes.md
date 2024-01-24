# Ncat but with encryption :O

## We covered how to use the basics of ncat to connect and host a session between hosts
but anyone within the same network can eavesdrop and sniff out your packets and all the messages
sent between the two clients.

## Modern day internet communication involves encryption to protect the privacy of everyone.

An interesting concept worth to understand and remember - this challenge makes use of 
openssl's builtin libraries to provide a rudimentary and encrypted way of interacting with another machine (similar to ncat!)

Communication is established using an asymmetric encryption scheme known as RSA - learn more  
[check this out](https://www.youtube.com/watch?v=wXB-V_Keiu8)


to setup a server, you must first create a "certificate" - this acts like your private key (secret passcode to create secret speak)

                     method                                                
                    \/
openssl req -newkey rsa:2048 -nodes -keyout -key.pem -x509 -days 365 -out cert.pem

## to start the server
openssl s_server -key key.pem -cert cert.pem -accept \<port\>

## to connect to the server
openssl s_client -connect ip:port

I think from there you can figure this out..