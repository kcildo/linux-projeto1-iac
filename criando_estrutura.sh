#!/bin/bash

echo "Criando estrutura de usuários..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuarios..."
useradd carlos -c"Carlos Silva" -m -s /bin/bash -p$(openssl passwd Senha123) -G GRP_ADM
useradd maria -c"Maria Silva" -m -s /bin/bash -p$(openssl passwd Senha123) -G GRP_ADM
useradd joao -c"Joao Silva" -m -s /bin/bash -p$(openssl passwd Senha123) -G GRP_ADM

useradd debora -c"Débora Silva" -m -s /bin/bash -p$(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -c"Sebastiana Silva" -m -s /bin/bash -p$(openssl passwd Senha123) -G GRP_VEN 
useradd roberto -c"Roberto Silva" -m -s /bin/bash -p$(openssl passwd Senha123) -G GRP_VEN

useradd josefina -c"Josefina Silva" -m -s /bin/bash -p$(openssl passwd Senha123) -G GRP_SEC
useradd amanda -c"Amanda Silva" -m -s /bin/bash -p$(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -c"Rogério Silva" -m -s /bin/bash -p$(openssl passwd Senha123) -G GRP_SEC

echo "Adicionando permissões..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec   

echo "Finalizando!!!"
