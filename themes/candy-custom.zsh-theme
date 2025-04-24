function prompt_256_color() {
  echo "%{\e[38;5;${1}m%}"
}

PR_ORANGE=$(prompt_256_color 202)
PR_BLUE=$(prompt_256_color 33)

return_code="%(?..${PR_ORANGE}%? ${PR_BLUE})"

PROMPT=$'
${PR_ORANGE}%D{[%H:%M:%S]} ${PR_BLUE}[%~] $(git_prompt_info)\
${PR_BLUE}-> $return_code%#%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="${PR_ORANGE}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]"
ZSH_THEME_GIT_PROMPT_DIRTY=" ${PR_BLUE}*${PR_ORANGE}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
