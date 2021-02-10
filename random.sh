#!/bin/bash
##input the path of the folder that contains the coor folder
input=$1
mkdir $input/random_control
ls -1 $input/coor/*.bed >> $input/random_control/list

#reading list in loop and use random.R
while read p
do
Rscript /home/parashar/scratch/rscript/random.R $p
done < "$input/random_control/list"
