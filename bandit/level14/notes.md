# Using Ncat and Speaking to yourself

Within the bandit machine, there is a hidden program that is listening on port 30000 

# introducing the network cat!

Modern computers and networks connect through the internet using ip addresses and ports (basically)

We can use a cool program that let's us test this functionality called ncat!

Depending on which variation you have (nc ncat netcat)
you can essentially perform a connection using the ip address and port

so an example to connect to an ip address 127.0.0.1 with port 1337, you would put
ncat 127.0.0.1 1337

If the connection is successful, you would just receive a blank line where you can type and receive whatever you want

# What is localhost

localhost is another name for the ip address of your machine. Whenever you want to address your own machine's ip, you can use either 127.0.0.1, the ip address leased to you by the network, or ***localhost***

so if you would like to connect to your own machine on port 1337, you can do.

ncat localhost 1337

Because ncat works as a server to client connection, if you would like to setup a server to listen to inbound connections /\

ncat -l <port to setup the listen>

-l stands for listening, so ncat will listen for a connection and establish communication


# What are we supposed to do for this challenge again?

Oh right, so we're basically putting all these details together. We would like to connect to localhost on port 30000

ncat localhost 30000

you'll receive a blank input, and from the instructions of this challenge we provide a password for this current level to receive the key for the next one.

*GG.com*











