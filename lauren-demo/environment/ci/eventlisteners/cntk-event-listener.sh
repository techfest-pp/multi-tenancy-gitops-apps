#!/usr/bin/env bash

# Set variables
if [[ -z ${GIT_ORG} ]]; then
  echo "Please provide environment variable GIT_ORG"
  exit 1
fi

GIT_BRANCH_QM1=${GIT_BRANCH_QM1:-master}
GIT_BRANCH=${GIT_BRANCH_LAUREN-DEMO:-master}

# Create Kubernetes Secret yaml
( echo "cat <<EOF" ; cat cntk-event-listener.yaml_template ; echo EOF ) | \
GIT_ORG=${GIT_ORG} \
GIT_BRANCH_QM1=${GIT_BRANCH_QM1:-master} \
GIT_BRANCH=${GIT_BRANCH_LAUREN-DEMO:-master} \
sh > cntk-event-listener.yaml