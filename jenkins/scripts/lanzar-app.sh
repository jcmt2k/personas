#!/bin/sh
. ./env
base="../../"
cd $base
source ../../bin/activate
nohup python3 manage.py runserver &
echo "Lanzar OK"
exit 0
