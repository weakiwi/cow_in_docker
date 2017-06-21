#!/bin/sh

tmp_debug=""
tmp_path=""
if [[ "${DEBUG}x" == "true"x ]]
then
        tmp_debug="-debug"
fi

if [[ -z "${COW_PATH}" ]]
then
        tmp_path="-rc ${COW_PATH}"
fi
/usr/local/app/cow $tmp_path $tmp_debug
