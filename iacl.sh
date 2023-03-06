#!/bin/bash
echo "Criando diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec 

echo "Criando grupos de usuários" 

groupadd GRP_ADM 
groupadd GRP_VEN 
groupadd GRP_SEC 

echo "Criando usuários" 

useradd carlos -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM
useradd joao_ -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN
useradd sabastiana -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC
useradd amanda_ -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC 
useradd rogerio_ -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC

echo "Configurando as permissões dos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo  "Especificando as permissões dos diretório"

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado."
