#!/bin/bash

mkdir /publico /adm /ven /sec -v
chmod 777 /publico -v && chmod 770 /adm /ven /sec -v

groupadd GRP_ADM && groupadd GRP_VEN && groupadd GRP_SEC

chown root:GRP_ADM /adm -v
chown root:GRP_VEN /ven -v
chown root:GRP_SEC /sec -v

useradd carlos -m -s /bin/bash -p $(openssl passwd 1212) -G GRP_ADM && passwd -e carlos
useradd maria -m -s /bin/bash -p $(openssl passwd 1212) -G GRP_ADM && passwd -e maria
useradd joao -m -s /bin/bash -p $(openssl passwd 1212) -G GRP_ADM && passwd -e joao
useradd debora -m -s /bin/bash -p $(openssl passwd 1212) -G GRP_VEN && passwd -e debora
useradd sebastiana -m -s /bin/bash -p $(openssl passwd 1212) -G GRP_VEN && passwd -e sebastiana
useradd roberto -m -s /bin/bash -p $(openssl passwd 1212) -G GRP_VEN && passwd -e roberto
useradd josefina -m -s /bin/bash -p $(openssl passwd 1212) -G GRP_SEC && passwd -e josefina
useradd amanda -m -s /bin/bash -p $(openssl passwd 1212) -G GRP_SEC && passwd -e amanda
useradd rogerio -m -s /bin/bash -p $(openssl passwd 1212) -G GRP_SEC && passwd -e rogerio
