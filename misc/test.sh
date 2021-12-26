#!/bin/bash
user="oauth2"
name="name"


myArray=("cat" "dog" "mouse" "frog")
 
for str in ${myArray[@]}; do
  echo $str
done

echo $1 $2