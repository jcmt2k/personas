#!/bin/sh
cd jenkins/scripts
. ./env
#sshpass -p $clave scp -r . $usuario@$servidor:personas/. 
echo "$usuario@$servidor:"
echo "Entregar software OK"
exit 0
