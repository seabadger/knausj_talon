#!/bin/bash
barf() {
    echo $* >&2
    exit 1
}

STASHED=no
if [ "$(git status --porcelain --untracked-files=no | wc -l| tr -d ' ')" != 0 ]
then
  echo "We have local modifications, stashing them!"
  git stash || barf "failed to stash local modifications"
  STASHED=yes
fi

git checkout knausj_master || barf "failed to checkout knausj_master"
git pull
git checkout master  || barf "failed to checkout master"
git merge knausj_master
git checkout vadim_personal  || barf "failed to checkout vadim_personal"
git merge master
git status

if [ "$STASHED" == "yes" ];
then
    echo "stashed:"
    git stash list || barf "git stash list failed"
    echo "unstashing local modifications!"
    git stash pop || barf "git stash pop failed"
    echo "unstashed successfully"
    git status
fi
