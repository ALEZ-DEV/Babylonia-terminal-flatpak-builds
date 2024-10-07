#!/bin/sh

set -e
set -x

wget https://www.cabextract.org.uk/cabextract-1.11.tar.gz
mkdir cabextract
tar -zxf cabextract-1.11.tar.gz -C cabextract --strip-components=1
cd cabextract
./configure
make
