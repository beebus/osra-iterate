#!/bin/bash

# This Bash script iterates through every file in an entire folder as input file (.TIF), with an associated output file (.MOL).
# $1 = Argument #1, the folder path for the input TIF files.
# $2 = Argument #2, the folder path for the output MOL files.
#
# Example command line usage:
# ./osra_iterate.sh ~/Share/input/ ~/Share/output/

if [ ! $# == 2 ]; then
	echo "Usage: $0 input_folder output_folder"
	exit
fi

echo "$1"
if [ ! -d "$1" ]; then
	echo "Input folder does not exist. Exiting..."
	exit
else
	echo "Input folder exists."
fi

echo "$2"
if [ ! -d "$2" ]; then
	echo "Output folder does not exist. Enter credentials to create it now:"
	sudo mkdir "$2"
else
	echo "Output folder exists."
fi

input_folder="$1"
if [ ${input_folder: -1} == "/" ]; then
	# If last character is a slash, remove it to standardize.
	input_folder="${input_folder:0:-1}"
fi

output_folder="$2"
if [ ${output_folder: -1} == "/" ]; then
	# If last character is a slash, remove it to standardize.
	output_folder="${output_folder:0:-1}"
fi

# For each file in the input folder
for file in "$input_folder"/*
do
	# Check to make sure it's actually a file.
	if [ -f $file ]; then
		# Check to make sure it's a TIF file (and not some other file type)
		if [ ${file: -4} == ".tif" ] || [ ${file: -4} == ".TIF" ]; then
			# Remove the path info between and including the first and last forward slashes.
			ifile="${file##/*/}"
			# echo "Input file: $ifile"
			# Take the input filename, remove last 3 characters (tif or TIF), then add "mol" for output filename
			ofile="${ifile:0:-3}mol"
			# echo "Output file: $ofile"
			echo "$ifile -> $ofile"
			# run the OSRA command
			osra -w "$output_folder"/"$ofile" -f sdf -p "$input_folder"/"$ifile"
		fi
	fi
done
