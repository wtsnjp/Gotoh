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
sed -i -e "/^\[!\[Build Status\]/d" $TARGET/README.md
rm $TARGET/{create_archive.sh,*-e}
rm -rf $TARGET/{out,tests}

cd $TMPDIR && zip -r $PWDF/$PACKAGE.zip $PACKAGE
rm -rf $TARGET
echo "* Done"
