#!/bin/bash
user=""
name="name"


myArray=("cat" "dog" "mouse" "frog")
 
for str in ${myArray[@]}; do
  echo $str
done

echo $1 $2