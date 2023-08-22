#!/bin/bash

# The first challenge involves connecting to the next one!!
# this is a simple bash script to automate the tedious typing of the same
# command over and over
# ./connect <number>

test="$@" 


echo ssh -p 2220 bandit$test@bandit.labs.overthewire.org 

#| /usr/bin/bash


