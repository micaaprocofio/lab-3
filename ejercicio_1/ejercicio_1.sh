#!/bin/bash

# ./ejercicio_1.sh ./copyfrom ./copyto

echo "Cleaning old data..."
rm -f ./copyfrom/*
rm -f ./copyto/*

echo "Creating test data..."
touch ./copyfrom/test_copy_1.txt
touch ./copyfrom/test_copy_2.txt
touch ./copyfrom/test_copy_3.txt
# ----------

echo "Executing copy..."
copy_from=$1
copy_to=$2

read -p "Are you sure you want to copy the files in directory $copy_from into $copy_to? [Y/N] " -n 1
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    cp $copy_from/*  $copy_to
    echo "All files have been copied from $copy_from to $copy_to"
else
    echo "Operation cancelled."
    exit 1
fi

