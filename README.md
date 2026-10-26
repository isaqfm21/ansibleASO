Despliegue LAMP + Samba + FTP + PostgreSQL con Ansible (roles) en openSUSE 16.0.

1. Copiar `hosts.example` a `hosts` y completar IPs y contraseña.
2. Crear `.vault_pass` y `group_vars/all/vault.yml` (cifrado con ansible-vault).
3. Ingreso para `ansible-vault` por `edit, view` seguido de  `vault.yml` (requeridos para cambio o vista).
4. Uso de `ansible-playbook ping.yml` para ver la conectividad de las maquinas.
5. Ejecucion manual para el despliegue `ansible-playbook playbook.yml`.
6. Verificacion del despliegue en las maquinas `ansible-playbook verificar.yml`.

Dspliegue en un solo script
 
*  Ejecutar `./deploy.sh` que tiene todos los playbooks para ejecutar en uno solo.

