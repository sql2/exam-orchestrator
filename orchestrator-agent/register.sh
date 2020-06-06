#!/bin/bash

# orchestrator-client -c forget -i $HOSTNAME:3306

orchestrator-client -c discover -i $HOSTNAME:3306

orchestrator-client -c all-instances

orchestrator-client -c topology -i $HOSTNAME:3306

orchestrator-client -c search -i $HOSTNAME:3306

#orchestrator-client -c relocate -i dev.example.com:3306 -d $HOSTNAME:3306
