# Introducing nmap scanning

Please watch this video if you do not know what (network) [ports](https://www.youtube.com/watch?v=g2fT-g9PX9o) are!

There are many ports that can be open on a busy system. Depending on what services the machine runs,
these ports are exposed and known to the network. 

There are port scanners like *nmap* that can provide a way to 
1. discover
2. enumerate
3. exploit

ports on a target machine

So for this challenge we're looking for a service that is running on a port that is between
31000 and 32000 and is using the [openssl communication we covered from before](../level15/notes.md)

```
nmap -sV -p 31000-32000 localhost
      /\  |                 |
    test and discover which explicit service is running when a open port is discovered
          |                 |
          | Scan only the selected range of ports specified for the target
                            |
    the target is the current machine we're logged in, so we're scanning ourselves, denoted by "localhost" or "127.0.0.1"
```

You can solve the challenge from here :) 
to learn more about the fascinating intricacies of nmap, check here https://nmap.org/
