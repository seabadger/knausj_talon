#!/bin/bash
barf() {
    echo $* >&2
    exit 1
}

git checkout knausj_master || barf "failed to checkout knausj_master"
git pull
git checkout master  || barf "failed to checkout master"
git merge knausj_master
git checkout vadim_personal  || barf "failed to checkout vadim_personal"
git merge master
git status
