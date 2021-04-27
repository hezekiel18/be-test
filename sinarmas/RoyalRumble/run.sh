#!/bin/bash

for file in ./input1.txt
do
  java -cp . Main $file
  printf "\n"
done