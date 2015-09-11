#!/bin/bash
TICKET=$(git symbolic-ref HEAD | sed 's/[^0-9]*\([0-9]*\)[^0-9]*/\1/')
if [ -z "$TICKET" ] ; then
    echo "No ticket number found"
    exit 1
fi
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}
BRANCH=$(parse_git_branch)
git checkout master
git pull origin master
echo "Ticket: #$TICKET, merging $BRANCH to master branch"
echo -n "Press RETURN to proceed"
read confirmation
git merge $BRANCH -m "Fixes #$TICKET" --log --no-ff
echo "Merge done. Don't forget to test before pushing."

