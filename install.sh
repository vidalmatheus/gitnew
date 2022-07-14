#!/bin/bash
RESTORE='\033[0m'
RED='\033[00;31m'
GREEN='\033[00;32m'
YELLOW='\e[0;33m'
BLUE='\033[0;34m'
LBLU='\033[1;34m'
BRANCH_NAME='main'

echo -e "${LBLU}
       _ _
  __ _(_) |_ _ __   _____      __
 / _\` | | __| '_ \ / _ \ \ /\ / /
| (_| | | |_| | | |  __/\ V  V /
 \__, |_|\__|_| |_|\___| \_/\_/
 |___/
${RESTORE}"
echo -e "${LBLU}                Configure your installation\n${RESTORE}"


read -p "$(echo -e ${BLUE}"? "${RESTORE}${LBLU}"Main branch name (main): "${RESTORE})" asked_branch_name


if ! [ -z ${asked_branch_name} ] ; then
  BRANCH_NAME=$asked_branch_name
fi


GITNEW="
gitnew() {
  if [ -z "'${1+x}'" ] || [ -z "'${2+x}'" ]; then
    echo 'You need to pass a branch name and a commit msg in that order'
  else
    git status;
    git stash;
    git checkout ${BRANCH_NAME};
    git pull;
    git checkout -b "'"$1"'";
    git stash pop;
    git add .;
    git commit -m "'"$2"'";

    if ! [ -z "'${3+x}'" ] && [ "'$3'" = '-mr' ]; then
        git push --set-upstream origin "'"$1"'" -o merge_request.create;
    else
        git push --set-upstream origin "'"$1"'";
    fi
  fi
}
"
echo "${GITNEW}" | tee -a ~/.bashrc >> /dev/null
echo "${GITNEW}" | tee -a ~/.zshrc >> /dev/null

echo -e "${GREEN}\nYou are good to go! \o/ \n\ngitnew <new_branch_name> <commit_msg>\n${RESTORE}"

if [[ $SHELL =~ "zsh" ]]; then
    zsh
elif [[ $SHELL =~ "bash" ]]; then
    bash
else
    echo "Shell not found"
fi
