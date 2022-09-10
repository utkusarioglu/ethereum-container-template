#!/bin/bash

branch=$(git branch --show-current)
tag_message="This tag's artifacts are not meant for consumption. Use at your own risk."

if [[ $branch != feature/* ]];
then
  echo "This script can only be used on feature branches"
  echo "Current branch: $branch"
  exit 1
fi

last_tag=$(git tag --list "$branch/*" | sort | tail -n1)
echo "last_tag: $last_tag"
last_number=${last_tag##*/}
next_number=$((last_number + 1))

message="$branch/$next_number"
git add .
git commit -m $message
git tag -a $message -m $tag_message
git push --follow-tags
