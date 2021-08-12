#!/bin/bash
i=0
scripts_count=0

if [[ "$1" == "-a" && "$#" == "1" ]]; then
	# test all files
	scripts_count=`ls | grep ".sh" | wc -l`
	for ((i = 0; i <= $scripts_count; i++)) do
		if [[ -f "task-$i.sh" ]]; then
			"./task-$i.sh"
		fi
	done
elif [[ -f "$1" && "$#" == "1" ]]; then
	# test the given file
	"./$1"
elif [[ -f "task-$1.sh" && "$#" == "1" ]]; then
	# test the file based on task id
	"./task-$1.sh"
else
	echo -e "\e[31mInvalid usage\e[0m"
	echo "Usage 00 (run all test files): ./test.sh -a"
	echo "Usage 01 (run test file): ./test.sh file"
	echo "Usage 10 (run test file based on task id): ./test.sh #"
fi
