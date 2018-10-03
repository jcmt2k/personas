#!/bin/sh
cd jenkins/scripts
. ./env
sshpass -p $clave scp -r . $usuario@$servidor:django/curso/personas/. 
sshpass -p $clave ssh $usuario@$servidor /home/$usuario/personas/jenkins/scripts/lanzar-app.sh
echo "$usuario@$servidor:"
echo "Entregar software OK"
exit 0
