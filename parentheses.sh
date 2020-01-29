#!/bin/bash

echo
echo '# echo $(pwd)'
echo $(pwd)
echo

echo
echo '# echo `pwd`  (NOTE: backtick is left of 1 key)'
echo `pwd`
echo

echo
echo '# (cd; pwd)'
(cd; pwd)
echo

echo
echo '# current=$(pwd)  (NOTE: assigns variable)'
current=$(pwd)
echo
echo
echo '# echo $current'
echo $current
