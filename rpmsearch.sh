#!/bin/bash
searchfile=$1
rpmpackage="No package found"
for package in $(rpm -qa); do
# echo $package
printf "."
  for file in $(rpm -ql $package); do
    if [ $file == $searchfile ]; then
      rpmpackage=$package
    fi
  done
done
echo $rpmpackage
