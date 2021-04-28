#!/bin/shell

# Checks if directory exists
dir_exists() {
    ! [ -d "$1" ];
}
