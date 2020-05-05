#!/bin/bash

#title           :keep_lines_with_specific_keyworks.sh
#description     :This script will keep lines from a file containg specific keywords
#author		       :Wilfried YAO
#author's email  :hlombroso@gmail.com
#date            :20200504
#version         :0.1    
#usage	         :prepare a file called keywords_to_keep.txt which contains the keywords to filter 
#usage           :run [bash keep_lines_with_specific_keyworks.sh]


input_dir="input"
output_dir="output"

# specify path of the file containing the list of keywords to filter
keywords_to_keep_file="keywords_to_keep.txt"

echo "---List of keywords to filter:"
cat $keywords_to_keep_file


grep_search=""
for keyword in $(cat "$keywords_to_keep_file"); do
  #echo $keyword
  grep_search="${grep_search}|$keyword"
done

grep_search="$(echo "$grep_search" | cut -c 2-)"
# echo $grep_search


# check and create output directory if it does not exist
if [ ! -d $output_dir ]
then
  echo "Ouput directory $(pwd)/$output_dir does not exit. It will be created"
  mkdir $output_dir
  if [ -d $output_dir ]
  then
     echo "Ouput directory $(pwd)/$output_dir has been created successfully"
  else
     echo "Unable to create  the directory  $(pwd)/$output_dir"
     echo "Please check that you have writing permission under $(pwd)"
     echo "Terminating script..."
     exit 0
  fi
fi

echo " "
echo $'\n--filtering starting'
for file in ${input_dir}/*;
do
  echo "Filtering file $file to $output_dir/"$(basename "$file-kept")""
  cat $file | grep -E $grep_search >  $output_dir/"$(basename "$file-kept")"
done