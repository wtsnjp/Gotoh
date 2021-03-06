#!/bin/bash

PACKAGE=gotoh
PWDF=`pwd`

TESTDIR=$PWDF/tests
TMPDIR=$PWDF/tmp

ENGINES=("latex" "xelatex" "lualatex")
TESTNAMES=("config" "standard_dp" "memoization")

mkdir $TMPDIR
cp $PACKAGE.{dtx,ins} $TMPDIR
cd $TMPDIR
latex $PACKAGE.ins

for t in ${TESTNAMES[@]}; do
  for e in ${ENGINES[@]}; do
    $e $TESTDIR/$t.tex && diff $t.dbg $TESTDIR/$t.txt
    if [ $? = 0 ]; then
      rm -rf $TMPDIR/$t.*
    else
      echo "* test failed"
      exit 1
    fi
  done
done

echo "* successfully completed"
rm -rf $TMPDIR
