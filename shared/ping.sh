#!/bin/bash

# Routers e respetivos IPs
routers=("R1" "R2" "R3" "R4" "File Server 1" "File Server 2")
router_ips=(
    "10.0.1.1" "10.0.2.1"            #r1
    "10.0.1.2" "10.0.5.1" "10.0.4.1" #r2 
    "10.0.2.2" "10.0.3.1" "10.0.7.1" #r3
    "10.0.3.2" "10.0.4.2" "10.0.6.1" #r4
    "10.0.5.2" "10.0.7.2"            #fileservers
)

# pingar cada endereço com 1 único pacote
for ((i=0; i<${#routers[@]}; i++)); do
    echo "${routers[i]}:"
    ping -c 1 ${router_ips[i]}
    echo ""
done
