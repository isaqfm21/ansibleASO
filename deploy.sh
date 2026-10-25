#!/bin/bash
# Uso: ./deploy.sh                 -> despliega en TODO el grupo ASO
#      ./deploy.sh 192.168.0.214    -> despliega solo en esa IP
cd /root/ansibleASO || exit 1
LIMIT=""
[ -n "$1" ] && LIMIT="--limit $1"

echo "== Maquinas del grupo ASO =="
ansible-inventory --graph ASO

echo "== Conectividad =="
ansible ASO -m ping $LIMIT || echo "AVISO: alguna maquina no responde (se omitira)"

echo "== Sintaxis =="
ansible-playbook playbook.yml --syntax-check || exit 1

echo "== Despliegue =="
time ansible-playbook playbook.yml $LIMIT

echo "== Verificacion =="
ansible-playbook verificar.yml $LIMIT
