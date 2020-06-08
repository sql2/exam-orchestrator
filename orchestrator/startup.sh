#!/bin/bash

export ORCHESTRATOR_HOME=$(pwd)

${ORCHESTRATOR_HOME}/orchestrator --config=${ORCHESTRATOR_HOME}/orchestrator.conf http
