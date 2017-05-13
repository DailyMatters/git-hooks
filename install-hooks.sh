#!/bin/bash

#This will create synlinks for the hooks in this folder

CURRENT_PATH="`pwd`"

for hook in hooks/*;
    do
        temp=${hook}
        temp=${temp:6}

        ln -s "$CURRENT_PATH/${hook}" "$CURRENT_PATH/../.git/hooks/${temp}"
    done
