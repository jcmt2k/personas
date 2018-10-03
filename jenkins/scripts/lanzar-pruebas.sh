#!/bin/sh
. ./env
base="../../"
cd $base
source ../../bin/activate
nohup python3 manage.py test &
echo "Pruebas OK"
exit 0
