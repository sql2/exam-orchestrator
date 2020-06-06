#!/bin/bash

# orchestrator-client -c forget -i $HOSTNAME:3306

orchestrator-client -c discover -i $HOSTNAME:3306

orchestrator-client -c all-instances

orchestrator-client -c clusters

orchestrator-client -c which-master -i $HOSTNAME:3306

orchestrator-client -c which-replicas -i $HOSTNAME:3306

orchestrator-client -c which-cluster -i $HOSTNAME:3306

orchestrator-client -c which-cluster-instances -i $HOSTNAME

orchestrator-client -c topology -i $HOSTNAME:3306

orchestrator-client -c relocate -i dev.example.com:3306 -d agent.example.com
