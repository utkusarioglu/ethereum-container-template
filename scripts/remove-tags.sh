#!/bin/bash

branch=$(git branch --show-current)
tags=$(git tag --list "$branch/*")

for tag in $tags;
do
  git tag --delete $tag
  git push --delete origin $tag
done
