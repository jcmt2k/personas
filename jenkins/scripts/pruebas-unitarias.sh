#!/bin/sh
cd jenkins/scripts
. ./env
lanzar-pruebas.sh
echo "Pruebas unitarias OK"
exit 0
