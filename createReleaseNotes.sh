#!/bin/bash

gitDir=$1
notesPath=$2
startTag=$(git --git-dir=$gitDir/.git for-each-ref --sort=taggerdate --format '%(tag)' | tail -n2 | head -n1)
lastTag=$(git --git-dir=$gitDir/.git for-each-ref --sort=taggerdate --format '%(tag)' | tail -n1)

git --git-dir=$gitDir/.git log --pretty=format:%s $startTag..$lastTag > $2




