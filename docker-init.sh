#!/bin/bash

apt update
apt upgrade -y
publicIP=$(curl ipinfo.io 2>/dev/null | grep -Eo "([0-9]{1,3}[\.]){3}[0-9]{1,3}")
veilid-server -s logging.system.enabled=false -s logging.terminal.enabled=true -s core.network.protocol.udp.public_address=\"${publicIP}:5150\" -s core.network.protocol.tcp.public_address=\"${publicIP}:5150\"