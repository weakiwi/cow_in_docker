#!/bin/sh

if [[ "${DEBUG}x" == "true"x ]]
then
export DEBUG="-debug"
fi

/usr/local/cow "${DEBUG}" "${COW_PATH}"
