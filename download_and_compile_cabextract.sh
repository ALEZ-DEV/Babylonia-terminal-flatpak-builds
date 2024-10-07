set -e
set -x

wget https://www.cabextract.org.uk/cabextract-1.11.tar.gz
tar -zxf cabextract-1.11.tar.gz -C cabextract
cd cabextract-1.11
./configure
make
