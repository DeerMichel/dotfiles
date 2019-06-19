#!/bin/bash

# happy terminal
source ./common/print.sh

# detect os
if [[ "$OSTYPE" == "darwin"* ]]; then
    source ./mac/setup.sh
else
    error "Unsupported operating system '$OSTYPE'"
fi