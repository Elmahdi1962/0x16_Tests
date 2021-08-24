#!/bin/bash
f=$(type -P betty)
parent_dir="../"

for file in \
	$(find $parent_dir -type f -name "*.[hc]" ! -wholename "../*/*.[ch]" -perm 644)
do
	f $file
done

