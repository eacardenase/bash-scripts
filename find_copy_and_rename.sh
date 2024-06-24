#!/usr/bin/bash

if [ $# -eq 0 ]; then
	echo "Error: No image names provided"
	exit 1
fi

image_names=("$@")

process_image() {
	local new_name="$1"

	parent_folder="${new_name:0:1}"
	child_folder="${new_name:1:1}"
	lookup_name="${new_name/.png/_1.png}"
	directory_path="./pub/media/catalog/product/$parent_folder/$child_folder"
	local find_command="find $directory_path -name $lookup_name"
	local result=$(eval $find_command)

	if [ -z "$result" ]; then
		echo "No files found matching $lookup_name in $directory_path folder."
		
		local new_result=$(eval "find $directory_path" -name "${new_name/.png/}*")
		IFS=$'\n' read -rd '' -a image_names_found <<< "$new_result"

		for image_name in "${image_names_found[@]}"; do
			echo "$image_name"
		done	
	else
		echo "File found: '$result'"
		
		cp "$directory_path/$lookup_name" "$directory_path/$new_name"
		
		if [ $?  -eq 0 ]; then
			echo "File '$lookup_name' copied and rename to '$new_name'"
		else
			echo "Error: Failed to copy and rename the file '$lookup_name'"
		fi
	fi
}

for new_name in "${image_names[@]}"; do
	if [ ${#new_name} -lt 2 ]; then
		echo "Error: image_name '$new_name' should have at least two characters."
		continue
	fi

	process_image "$new_name"
done
