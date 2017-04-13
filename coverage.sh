#!/usr/bin/env bash
var=`go tool cover -func=coverage-all.out`
echo $var

if [ $1 ]
then
	echo "coverage target set:"$1
	coverage_target=$1
else
	echo "coverage target set default:80"
	coverage_target="80"
fi
echo $coverage
cover=${var#*(statements)}
echo ${cover:0:${#cover}-1} $coverage_target|awk '{if($1>$2) {printf"total coverage:%f greater then target:%f\n",$1,$2;exit 0}else{printf"total coverage:%f less then target:%f\n",$1,$2;exit 2}}'
