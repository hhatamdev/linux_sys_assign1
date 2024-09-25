#!/usr/bin/bash
writefile=$1
writestr=$2
if [ $# -ne 2 ]
then
echo "usage: $0 writefile writestr"
exit 1
fi

this_dir=`dirname ${writefile}`
this_file=`basename ${writefile}`

if ! [ -d ${this_dir} ]
then
   mkdir -p ${this_dir}
   if ! [ $? -eq 0 ]
   then
    echo "could not create file ${writefile}"
    exit 1
   fi
fi
echo "${writestr}" > ${writefile}
exit 0
 
