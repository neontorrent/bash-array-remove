# bash-array-remove
Function for removing elements from array in Bash

Usage:

    array_remove array_name [element_to_remove] *

Example:

    arr=("one 1" "two 2")
    array_remove arr "one 1"
    declare -p arr
    # arr will now only contain "two 2"
