#!/bin/sh

if [[ "${DEBUG}x" == "true"x ]]
then
export DEBUG="-debug"
fi

if [[ -z "${COW_PATH}" ]]
then
export COW_PATH="-rc ${COW_PATH}"
fi
/usr/local/app/cow "${DEBUG}" "${COW_PATH}"
