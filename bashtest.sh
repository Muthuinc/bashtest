#!/bin/bash

set -e

#for loop

for (( a=1; a<=5; a++ ))
  do
    echo $a

done

# for loop to check the existence of a file

for (( b=1; b<2; b++))
  do 
    cd /home/incubus/Desktop/Gitfiles/bashtest/
    c=$(ls | grep sample)
    echo $c
    if [ -e "$c" ];
      then
        rm -rf sample
    fi
    mkdir sample
    cd /home/incubus/Desktop/Gitfiles/bashtest/sample
    touch such.txt
    echo "first file" > such.txt
    gedit such.txt
    sleep 2
   autokey-run -s check	  
    cat such.txt
 done  
