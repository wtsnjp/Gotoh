#!/bin/sh

PACKAGE=gotoh
TMPDIR=~/tmp

if [ -e $PACKAGE.zip ]; then
  echo "* Error: Archive already exists"
  exit 1
fi

PWDF=`pwd`
TARGET=$TMPDIR/$PACKAGE

echo "* Create $PACKAGE.zip"
mkdir -p $TARGET && cp -r $PWDF/* $TARGET
rm $TARGET/create_archive.sh
rm -rf $TARGET/{out,tests}

cd $TMPDIR && zip -r $PWDF/$PACKAGE.zip $PACKAGE
rm -rf $TARGET
echo "* Done"
