#!/bin/bash
# Uso: ./agregar_ip.sh 192.168.0.214
cd /root/ansibleASO || exit 1
[ -z "$1" ] && { echo "Falta la IP"; exit 1; }

grep -qx "$1" inventory/hosts && { echo "La IP ya existe en hosts"; exit 0; }

awk -v ip="$1" '{print} /^\[ASO\]/{print ip}' inventory/hosts > inventory/hosts.new
mv inventory/hosts.new inventory/hosts

echo "IP $1 agregada al grupo ASO"
./deploy.sh "$1"

