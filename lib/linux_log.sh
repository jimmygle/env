#!/bin/bash

include "linux_date"

##
## Logger Functions for Bash
##
## TODO:
##   - Add support for different output streams
##

# Generic function for output
log() {
    if [ $LOG_LEVEL -eq 0 ]; then return 0; fi
    echo "$(timestamp) $1"
}

# Info logging
log_info() {
    log "info"
}
