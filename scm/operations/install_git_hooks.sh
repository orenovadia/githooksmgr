#!/usr/bin/env bash
# see https://stackoverflow.com/questions/4592838/symbolic-link-to-a-hook-in-git

function debug(){
false && echo $@
}

ROOT_DIR=`git rev-parse --show-toplevel 2>/dev/null`
cd ${ROOT_DIR}/.git/hooks

debug "Running install_git_hooks.sh"

for hook in `ls ../../scm/githooks` ;
do
    debug "Linking ${hook}"
    ln -s -f "../../scm/githooks/${hook}" "${hook}"
done