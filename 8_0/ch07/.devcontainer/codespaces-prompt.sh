if [ -z "${BASH_VERSION:-}" ]; then
  # shellcheck disable=SC2317
  return 0 2>/dev/null || exit 0
fi

__codespaces_strip_controls() {
  local value=$1

  value=${value//[[:cntrl:]]/}
  printf '%s' "$value"
}

__codespaces_prompt() {
  local previous_exit_status=$?
  __codespaces_github_user=$(__codespaces_strip_controls "${GITHUB_USER:-$(whoami)}")
  __codespaces_working_directory=$(__codespaces_strip_controls "$PWD")
  local branch_prompt=""
  local gray='\[\e[90m\]'
  local green='\[\e[32m\]'
  local blue='\[\e[34m\]'
  local red='\[\e[31m\]'
  local reset='\[\e[0m\]'

  __codespaces_branch=$(
    __codespaces_strip_controls "$(git branch --show-current 2>/dev/null)"
  )

  if [[ -n "$__codespaces_branch" ]]; then
    branch_prompt="${green}(${red}\${__codespaces_branch}${green})${gray} "
  fi

  # Expand variable values when displaying PS1, without evaluating their shell syntax.
  PS1="${gray}@${green}\${__codespaces_github_user}${gray} ➜ ${blue}\${__codespaces_working_directory}${gray} ${branch_prompt}$ ${reset}"
  return "$previous_exit_status"
}

if [[ ";${PROMPT_COMMAND:-};" != *";__codespaces_prompt;"* ]]; then
  if [[ -n "${PROMPT_COMMAND:-}" ]]; then
    PROMPT_COMMAND="__codespaces_prompt;${PROMPT_COMMAND}"
  else
    PROMPT_COMMAND="__codespaces_prompt"
  fi
fi
