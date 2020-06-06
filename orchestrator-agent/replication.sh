#!/bin/bash

MASTER_IP=$(resolveip -s dev.example.com)
SLAVE_IP=$(resolveip -s agent.example.com)

mysqlreplicate --master=admin:admin@${MASTER_IP}:3306 \
               --slave=admin:admin@${SLAVE_IP}:3306 \
               --rpl-user=repl:repl \
               -vvv

