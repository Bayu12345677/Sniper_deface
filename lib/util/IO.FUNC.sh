#!/bin/bash

Namespace.self: util/IO.FUNC
@import text_display/IO.ECHO text_display/colorama
@import util/IO.TYPE util/IO.SYSTEM.var util/IO.NAMEPARAMS

shopt -s expand_aliases

IO.func(){
	echo "IO.SYSTEM"
}
IO.SYSTEM.NAME(){
	local __lol__dev_name="$1"
    local __lol__dev_lineno=${BASH_LINENO[0]}
#	if [[ -z "$__lol__dev_name" ]]; then
#	     Tulis.strN "$(mode.bold: kuning)[$(mode.bold: putih)${BASH_SOURCE[0]}$(mode.bold: merah):$(mode.bold: hitam)${__lol__dev_lineno}$(mode.bold: kuning)]$(mode.bold: putih) Error name function $(mode.bold: cyan)➥$(mode.bold: putih) Name not found$(default.color)"
#	     exit 57
#	fi
        local def
          for def in $(declare -f "$__lol__dev_name"); do
              	echo "$def" &> /dev/null
              	__FUNCNAME__="${FUNCNAME[1]}"
            done
}

SYSTEM:IO.global(){
	local __global_argv="${@:3}"
    local __global_input=$1

    if [[ "$2" == "=" ]]; then
        s=
    else
        Tulis.strN "$(mode.bold: kuning)[$(mode.bold: putih)${BASH_SOURCE[1]}$(mode.bold: kuning)]$(mode.bold: merah) $2$(mode.bold: putih) Not found$(default.color)"
        exit 45
    fi
	declare -g ${__global_input}=$__global_argv
}

IO.AS "SYSTEM:IO.global" to "global:"
IO.AS "function" to "def:"
