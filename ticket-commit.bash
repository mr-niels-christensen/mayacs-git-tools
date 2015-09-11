#!/bin/bash
#Automatically types "For #<branch>" as the first input to git commit -a
cat <(echo -n "For #") <(git symbolic-ref HEAD 2> /dev/null | cut -b 12-) - | git commit -a

