#!/bin/sh
set -e
TARFILE_NAME=$1

wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
tar xf install-tl-unx.tar.gz

TARGET=/tmp/texlive
rm -rf $TARGET

perl install-tl-*/install-tl -profile profile

tar -cJf $TARFILE_NAME -C $TARGET .
