#!/bin/bash

mkdir /publico 
mkdir /adm
mkdir /ven
mkdir /sec

echo 'repositorios criados'

groupadd GRP_ADM 
groupadd GRP_VEN
groupadd GRP_SEC

echo 'grupso criados'

useradd carlos -m -s /bin/bash
useradd maria -m -s /bin/bash
useradd joao -m -s /bin/bash

useradd debora -m -s /bin/bash
useradd sebastiana -m -s /bin/bash
useradd roberto -m -s /bin/bash

useradd josefina -m -s /bin/bash
useradd amanda -m -s /bin/bash
useradd rogerio -m -s /bin/bash

echo 'usuarios criados'

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo 'pemissao alterada'

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo 'usuarios adicinados aos seus grupos' 

chown root:GRP_ADM /adm
chown root:GRP_ven /ven
chown root:GRP_SEC /sec

