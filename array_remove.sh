#!/usr/bin/env bash

array_remove() {
    if [ "$#" -lt 2 ]; then
        echo '
Usage: 
    array_remove array_name [element_to_remove] *
        
Example:
    arr=("one 1" "two 2")
    array_remove arr "one 1"
    declare -p arr
    # arr will now only contain "two 2"
'

        return 1
    fi

    local var_name="$1"
    local array_name="$1[@]"
    local array=("${!array_name}")
    shift

    local result=()
    for elem in "${array[@]}"; do
        for del in "$@"; do
            if [ "$elem" != "$del" ]; then
                result+=("$elem")
            fi
        done
    done

    eval "$var_name"'=("${result[@]}")'
}
