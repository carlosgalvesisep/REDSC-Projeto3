#!/bin/bash

# Routers e respetivos nomes dns
routers=("R1" "R2" "R3" "R4" "File Server 1" "File Server 2")
router_ips=("r1.redsc.local" "r2.redsc.local" "r3.redsc.local" "r4.redsc.local" "fileserver1.redsc.local" "fileserver2.redsc.local")

# pingar cada endereço com 1 único pacote
for ((i=0; i<${#routers[@]}; i++)); do
    echo "${routers[i]}:"
    ping -c 1 ${router_ips[i]}
    echo ""
done
