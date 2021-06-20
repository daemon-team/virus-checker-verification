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
