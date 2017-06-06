git config --global user.name "Nicholas Merritt"
git config --global user.email nimerritt@gmail.com

# Configure auto-complete and promt
# See https://wiki.archlinux.org/index.php/git#Bash_completion
cat <<EOF >> ~/.bashrc
source /usr/share/git/completion/git-completion.bash
source /usr/share/git/completion/git-prompt.sh
export PROMPT_COMMAND='__git_ps1 "\u@\h:\W" "\\\$ ";'
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS="yes"
EOF

