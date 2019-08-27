local DUCKY=$'\uf6e4'
local GIT=$'\ue725'
local TIMESTAMP='%T'

function get_pwd(){
    git_root=$PWD
    while [[ $git_root != / && ! -e $git_root/.git ]]; do
        git_root=$git_root:h
    done
    if [[ $git_root = / ]]; then
        unset git_root
        prompt_short_dir=%~
    else
        parent=${git_root%\/*}
        prompt_short_dir=${PWD#$parent/}
    fi
    echo $prompt_short_dir
}

local status_line="%{$fg_bold[yellow]%}${DUCKY}%{$fg_bold[green]%}"
local prompt_line="%{$fg_bold[white]%}[${TIMESTAMP}]%{$reset_color%} "

PROMPT=$'\n${status_line} $(get_pwd) $(git_prompt_info)\n${prompt_line}'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[cyan]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=") %{$fg[red]%}${GIT}"
ZSH_THEME_GIT_PROMPT_CLEAN=") %{$fg[green]%}${GIT}"
