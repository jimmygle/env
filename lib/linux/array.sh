#!/bin/bash

# Checks if an array includes a supplied value
array_includes() {
    local element match="$1"
    shift
    for element; do [[ "$element" == "$match" ]] && return 0; done
    return 1
}

