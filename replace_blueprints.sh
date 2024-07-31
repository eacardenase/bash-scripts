#!/usr/bin/bash

if [ $# -eq 0 ]; then
	echo "Error: No blueprint name provided"
	exit 1
fi

blueprint_name=$1

product_catalog_path="./pub/media/catalog/product"
import_images_path="./var/import/images"

find_command="find $product_catalog_path -name $blueprint_name"

catalog_result=$(eval $find_command)

if [ -z "$catalog_result" ]; then
		echo "No files found matching $blueprint_name in $product_catalog_path folder."
else
	find_command="find $import_images_path -iname $blueprint_name"

	import_result=$(eval $find_command)

	if [ -z "$import_result" ]; then
			echo "No files found matching $blueprint_name in $import_images_path folder."
	else
		cp $catalog_result $import_result

		echo "Catalog blueprint: $catalog_result"
		echo "Import blueprint: $import_result"
	fi
fi