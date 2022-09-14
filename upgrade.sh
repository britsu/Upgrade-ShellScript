#!/bin/bash
whoami 
echo " BEM VINDO"

# Atualiza o sistema ao remover/instalar/atualizar pacotes
echo "INICIANDO UPGRADE"
sudo apt full-upgrade -y
echo "UPGRADE CONCLUIDO"

# Remover pacotes nao utilizados
echo "INICIANDO REMOCAO DE PACOTES NAO UTILIZADOS"
sudo autoremove -y
echo "REMOCAO DE PACOTES NAO UTILIZADOS CONCLUIDA"

# Limpeza do cache
echo "Memoria e cache:"
free -m
echo "Limpando Cache e Swap"
sudo echo 3 > /proc/sys/vm/drop_caches
sudo sysctl -w vm.drop_caches=3
sudo swapoff -a && swapon -a
echo "Limpeza do Cache e Swap efetuada com sucessso"

free -m

sleep 5
echo "FIM"
sleep 5
