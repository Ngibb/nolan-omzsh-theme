
# Grab the current date (%D) and time (%T) wrapped in {}: {%D %T}
DALLAS_CURRENT_TIME_="%{$fg_bold[white]%}{%{$fg[yellow]%}%D %T%{$fg_bold[white]%}}%{$reset_color%}"
# Add 3 cyan ✗s if this branch is diiirrrty! Dirty branch!
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[cyan]%}!x!"
# For the git prompt, use a white @ and blue text for the branch name
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%}@%{$fg_bold[blue]%}"
# Close it all off by resetting the color and styles.
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
# Do nothing if the branch is clean (no changes).
ZSH_THEME_GIT_PROMPT_CLEAN=""


if [ $UID -eq 0 ];

then
#---- For Root

# Grab the current machine name: muscato
DALLAS_CURRENT_MACH_="%{$FG[202]%}%m%{$fg[white]%}:%{$reset_color%}";
# Grab the current filepath, use shortcuts: ~/Desktop
# Append the current git branch, if in a git repository: ~aw@master
DALLAS_CURRENT_LOCA_="%{$fg_bold[yellow]%}%~\$(git_prompt_info)%{$reset_color%}\$(parse_git_dirty)";
# Grab the current username: dallas
DALLAS_CURRENT_USER_="%{$fg_bold[red]%}%n%{$reset_color%}";
# Use a % for normal users and a # for privelaged (root) users.
DALLAS_PROMPT_CHAR_="%{$fg[white]%}%(!.#.%%)%{$reset_color%}";

else

# Grab the current machine name: muscato
DALLAS_CURRENT_MACH_="%{$FG[085]%}%m%{$fg[white]%}:%{$reset_color%}";
# Grab the current filepath, use shortcuts: ~/Desktop
# Append the current git branch, if in a git repository: ~aw@master
DALLAS_CURRENT_LOCA_="%{$fg_bold[cyan]%}%~\$(git_prompt_info)%{$reset_color%}\$(parse_git_dirty)";
# Grab the current username: dallas
DALLAS_CURRENT_USER_="%{$fg_bold[green]%}%n%{$reset_color%}";
# Use a % for normal users and a # for privelaged (root) users.
DALLAS_PROMPT_CHAR_="%{$fg[white]%}%(!.#.%%)%{$reset_color%}";


fi

PROMPT="$DALLAS_CURRENT_TIME_ $DALLAS_CURRENT_MACH_$DALLAS_CURRENT_LOCA_ $DALLAS_CURRENT_USER_ $DALLAS_PROMPT_CHAR_ " ;
