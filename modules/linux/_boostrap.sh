#!/bin/bash

mod__bootstrap_init() {
    echo "bootstrap: loading core libraries..."

    # Must be loaded in this order
    . $LIB_PATH/date.sh
    . $LIB_PATH/log.sh
    . $LIB_PATH/array.sh
    . $LIB_PATH/lib_loader.sh

    echo "bootstrap: loaded libs: date, log, array, loader"
}
