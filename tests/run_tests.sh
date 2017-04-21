#!/bin/bash

PWDF=`pwd`

TESTDIR=$PWDF/tests
TMPDIR=$PWDF/tmp

ENGINES=("latex" "platex" "uplatex" "xelatex" "lualatex")
TESTNAMES=("standard_dp" "memoization")

mkdir $TMPDIR
cp *.sty $TMPDIR
cd $TMPDIR

for t in ${TESTNAMES[@]}; do
  for e in ${ENGINES[@]}; do
    $e $TESTDIR/$t.tex && diff $t.dbg $TESTDIR/$t.txt
    if [ $? = 0 ]; then
      rm -rf $TMPDIR/$t.*
    else
      exit 1
    fi
  done
done

rm -rf $TMPDIR
