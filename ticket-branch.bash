#!/bin/bash
echo -n "Enter ticket number:"
read ticketnumber
echo -n "Enter one tag-word:"
read tagword
git checkout -b $tagword-$ticketnumber
