#!/bin/bash
barf() {
    echo $* >&2
    exit 1
}

if [ "$(git status --porcelain --untracked-files=no | wc -l)" != 0 ]
then
  barf "have local modifications, stash them or something"
fi

git checkout knausj_master || barf "failed to checkout knausj_master"
git pull
git checkout master  || barf "failed to checkout master"
git merge knausj_master
git checkout vadim_personal  || barf "failed to checkout vadim_personal"
git merge master
git status
