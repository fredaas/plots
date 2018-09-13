#!/usr/bin/env bash

#
# Renames directories in the current path
#
# $1: New name.
# $2: Base index.
#
# Directories are renamed using the following format:
#
#   <$1>-<$2>
#
# The base index is incremented for each consecutive directory renaming.
#
# Failure to provide arguments or failure of the renaming procedure will abort
# the program.
#
macro::rename()
{
    local name=$1
    local index=$2

    [[ -z "$name" ]]  && echo "Name not set, aborting..."  && exit 1
    [[ -z "$index" ]] && echo "Index not set, aborting..." && exit 1

    for oldname in *; do
        # Do not rename files.
        if [[ -f "$oldname" ]]; then
            continue
        fi

        (( index++ ))
        newname="$name-$index"

        mv $oldname $newname
        if [[ "$?" != "0" ]]; then
            echo "Error renaming $oldname to $newname, aborting..."
            exit 1
        fi
        echo "Renamed $oldname to $newname"
    done
}

macro::rename $1 $2
