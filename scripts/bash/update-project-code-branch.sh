#!/bin/bash

search_dir="F:/AllProjects/Project"
let index=0
project_list=(
project_one
project_two
project_three
)

for entry in "$search_dir"/*
do
  echo "$entry":
  cd "$entry" && git fetch
  cd "$entry" && git checkout master
  cd "$entry" && git pull
  cd "$entry" && git checkout -b PROFILE_NAME
  cd "$entry" && git checkout PROFILE_NAME
  echo "$entry/"${repo_list[index]}/src/main/resources:
  cp "$entry/"${repo_list[index]}/src/main/resources/application-beta.yml "$entry/"${repo_list[index]}/src/main/resources/application-pilot.yml
  cd "$entry" && git push -u origin PROFILE_NAME
  let index+=1
done