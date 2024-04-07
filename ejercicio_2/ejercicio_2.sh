#!/bin/bash

# ./ejercicio_2.sh ./test_dir "*.txt" "renamed_"

echo "Cleaning old data..."
rm ./test_dir/*.txt

echo "Creating test data..."
touch ./test_dir/test_rename.txt
touch ./test_dir/test_rename_2.txt
touch ./test_dir/test_rename_3.txt
# ----------

dir="$1"
pattern="$2"
new_name="$3"

echo "Executing rename..."
for file in $dir/$pattern
do
    new_file_name="${file/$pattern/$new_name${file##*/}}"
    mv $file $dir/$new_file_name
    echo "$file renamed to $new_file_name"
done
echo "Finished."


