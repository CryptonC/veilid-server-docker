#!/bin/bash

apt update
apt upgrade -y
veilid-server -s logging.system.enabled=false -s logging.terminal.enabled=true -f