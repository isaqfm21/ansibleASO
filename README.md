Despliegue LAMP + Samba + FTP + PostgreSQL con Ansible (roles) en openSUSE 16.0.

1. Copiar `hosts.example` a `hosts` y completar IPs y contraseña.
2. Crear `.vault_pass` y `group_vars/all/vault.yml` (cifrado con ansible-vault).
3. Ejecutar `./deploy.sh IP_DE_LA_VM`.
