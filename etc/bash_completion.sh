#!/bin/bash
# diamond-patterns 2016 Ian Dennis Miller
# http://github.com/iandennismiller/diamond-patterns

_project_completion()
{
    local cur prev opts

    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"

    # the available completions are directory names within the Work directory
    WORK_PATH=~/Work
    if [ -f ~/.diamond-patterns.conf  ]; then
        source ~/.diamond-patterns.conf
    fi
    opts="`ls -1t ${WORK_PATH}`"
    COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
    return 0
}

complete -F _project_completion -o default project-workon
