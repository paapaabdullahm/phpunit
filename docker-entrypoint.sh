#!/usr/bin/env bash

isCommand() {
  for cmd in ""
  do
    if [ -z "${cmd#"$1"}" ]; then
      return 0
    fi
  done

  return 1
}

# check if the first argument passed in looks like a flag
if [ "$(printf %c "$1")" = '-' ]; then
  set -- /tini -- phpunit "$@"
# check if the first argument passed in is phpunit
elif [ "$1" = 'phpunit' ]; then
  set -- /tini -- "$@"
# check if the first argument passed in matches a known command
elif isCommand "$1"; then
  set -- /tini -- phpunit "$@"
fi

exec "$@"
