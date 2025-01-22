#/usr/bin/env bash
lsfrt () {
    find $1 -type f -print0 | xargs -d "\0" ls -aclt
}
