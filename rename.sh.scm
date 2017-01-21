#!/bin/bash
for i in `ls`
do
        name=`echo $i`
        mv $i $name.scm
done
