#!/bin/bash

# ./D3scubrirEquip0sEnL4R3dEnc3ndid0s.sh <ip-address>

if [ $1 ]; then
	ip_address=$1
	for i in $(seq 1 255); do
        	timeout 1 bash -c "ping -c 1 $i.$i.$i.$i > /dev/null 2>&1" && echo "EQUIPO - $i.$i.$i.$i - ACTIVADO" &
	done; wait
else
	echo -e "\n[*] Uso: ./D3scubrirEquip0sEnL4R3dEnc3ndid0s-2.sh <ip-address\n>"
	exit 1
fi

