#!/bin/bash

name=$1
exe=$2
gcc $name -o $exe.exe && ./$exe.exe


