#!/bin/bash

REPOS=( 
    "sysrepo-viewer"
    "python_web_api"
    "python_graphs"
    "alien_invasion"
    "moderncppexamples"
    "ansible"
    "python_scripts"
    "studies"
    "brute_wifi"
    "overthewirecodes"
    "routerkeygenPC"
    "golQt"
    "Lynel"
    )

REPOS_PATH="git@github.com:szymonnogiec/"

for i in "${REPOS[@]}"
do :
    git clone $REPOS_PATH$i".git"
done

