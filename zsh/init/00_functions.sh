#!/bin/sh

# Gets the absolute path of the first parameter.
abspath() {
    cd -P -- "$(dirname -- "$1")" && printf '%s\n' "$(pwd -P)/$(basename -- "$1")"
}
