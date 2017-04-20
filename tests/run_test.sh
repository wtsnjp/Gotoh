#!/bin/sh

TESTDIR=tests
ENGINES=("latex" "xelatex" "lualatex")
TESTNAMES=("algorithm")

for t in ${TESTNAMES[@]}; do
  for e in ${ENGINES[@]}; do
    $e $TESTDIR/$t.tex && diff $t.dbg $TESTDIR/$t.txt
    if [ $? = 0 ]; then
      rm -f *.dbg
    else
      exit 1
    fi
  done
done
