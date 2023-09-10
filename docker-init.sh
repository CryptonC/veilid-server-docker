#!/bin/bash

apt update
apt upgrade -y
veilid-server -s logging.system.enabled=false -s logging.terminal.enabled=true -s client_api.listen_address=\"0.0.0.0:5959\" -f