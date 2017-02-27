#!/bin/bash

file_list=()
while IFS= read -d $'\0' -r file ; do
    file_list=("${file_list[@]}" "$file")
done < <(find ~/ -name "*git" -print0)

for dir in "${file_list[@]}"; do

    git=${dir/\.git/}
    cd "${git}"
    git	add -A
    git	commit -m "Periodic Update"
    echo "${git}\n"
done

