#/bin/bash
#Git bash completion
git_completion_script=/usr/local/git/contrib/completion/git-completion.bash
if test -f $git_completion_script; then
          source $git_completion_script
fi
