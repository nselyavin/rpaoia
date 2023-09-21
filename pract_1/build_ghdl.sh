#!/bin/bash

mkdir -p build 
mkdir -p export
cd build

echo "look for:"
echo "component: $1.vhdl"
echo "component test banch: $1_tb.vhdl"

ghdl -s ../$1.vhdl
ghdl -s ../$1_tb.vhdl

ghdl -a ../$1.vhdl
ghdl -a ../$1_tb.vhdl

ghdl -e $1
ghdl -e $1_tb

mv $1 ../export
mv $1_tb ../export

echo "Successfully added to export!"



