#!/bin/sh

EICAR='X5O!P%@AP[4\PZX54(P^)7CC)7}$EICAR-STANDARD-ANTIVIRUS-TEST-FILE!$H+H*'

echo "Creating eicar.txt"
echo "${EICAR}" >eicar.txt

echo "Creating eicar-1k.txt"
{
for n in $(seq 1 1024); do
    echo -n "x"
done
echo "${EICAR}"
} >eicar-1k.txt

echo "Creating eicar+1k.txt"
{
echo "${EICAR}"
for n in $(seq 1 1024); do
    echo -n "x"
done
} >eicar+1k.txt

echo "Creating eicar-middle-2k.txt"
{
for n in $(seq 1 1024); do
    echo -n "x"
done
echo "${EICAR}"
for n in $(seq 1 1024); do
    echo -n "x"
done
} >eicar-middle-2k.txt

echo "Creating eicar-200m.txt"
{
    dd bs=1024k seek=200 count=1 of=eicar-200m.txt if=/dev/zero >/dev/null 2>&1
    echo "${EICAR}" >>eicar-200m.txt
}

echo "Creating eicar+200m.txt"
{
    dd bs=1024k seek=200 count=1 of=eicar+200m.txt if=/dev/zero >/dev/null 2>&1
    echo "${EICAR}" >>eicar+200m.txt
}

echo "Creating eicar.zip"
zip -q -r eicar.zip eicar.txt

echo "Creating eicar.tar"
tar cf eicar.tar eicar.txt

echo "Creating eicar.tar.bz2"
bzip2 -c9 eicar.tar >eicar.tar.bz2

echo "Creating eicar.tar.gz"
gzip -c9 eicar.tar >eicar.tar.gz

echo "Creating eicar.tar.xz"
xz -c9 eicar.tar >eicar.tar.xz

echo "Creating eicar.tbz"
cp eicar.tar.bz2 eicar.tbz

echo "Creating eicar.tgz"
cp eicar.tar.gz eicar.tgz

echo "Creating eicar.txz"
cp eicar.tar.xz eicar.txz
