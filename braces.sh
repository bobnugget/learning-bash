#!/bin/bash

echo '# test="hello" (initiates variable)'
test="hello"
echo

echo '# echo $test123'
echo $test123
echo '(no output)'
echo

echo
echo '# echo ${test}123'
echo ${test}123
echo

echo
echo '# echo ${test/ll/ff}  (substitutes "ll" with "ff")'
echo ${test/ll/ff}
echo

echo '# echo f{oo,ee,a}t'
echo f{oo,ee,a}t
echo

