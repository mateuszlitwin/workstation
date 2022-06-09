if [ "$USER" = "root" ]
then CARETCOLOR="red"
else CARETCOLOR="blue"
fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
PROMPT='%{$fg_bold[red]%}%W %* %{$reset_color%}%{${fg_bold[green]}%}%3~ $(git_prompt_info)
%{${fg_bold[$CARETCOLOR]}%}%#%{${reset_color}%} '
RPS1='$(vi_mode_prompt_info) ${return_code}'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[cyan]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"
MODE_INDICATOR="%{$fg_bold[magenta]%}<%{$reset_color%}%{$fg[magenta]%}<<%{$reset_color%}"
