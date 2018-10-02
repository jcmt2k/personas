#!/bin/sh
cd jenkins/scripts
. ./env
#scp -r . $usuario@$servidor:personas/. 
echo "$usuario@$servidor:"
echo "Entregar software OK"
exit 0
