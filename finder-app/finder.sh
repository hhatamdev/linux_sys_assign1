#!/usr/bin/bash
filesdir=$1
searchstr=$2
if [ $# -ne 2 ]
then 
echo "usage: $0 dir searchstr"
exit 1
fi

if [ -d ${filesdir} ]
then
echo "Finding \"${searchstr}\" in folder:\"${filesdir}\""
file_count=`ls ${filesdir} | wc -l`
match_count=`grep -r ${searchstr} ${filesdir} | wc -l` 
echo "The number of files are ${file_count} and the number of matching lines are ${match_count}"
exit 0
else
echo "${filesdir} is not a valid folder"
exit 1

fi

