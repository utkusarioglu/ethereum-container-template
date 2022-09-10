#!/bin/bash

branch=$(git branch --show-current)
last_tag=$(git tag --list "$branch/*" | sort | tail -n1)
echo "last_tag: $last_tag"
last_number=${last_tag##*/}
next_number=$((last_number + 1))

git add .
message="$branch/$next_number"
git commit -m $message
git tag -a $message -m "$message"
git push --follow-tags
