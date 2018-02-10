#!/bin/bash

EXTRA_ARGS=()
while [ $# -gt 0 ]; do
  if [ -n "$1" ]; then
    if [ -d "roles/$1" ]; then
      if [ -z "$ROLES" ]; then
        ROLES="--tags $1"
      else
        ROLES="$ROLES,$1"
      fi
    elif [[ "$1" == --* ]]; then
      EXTRA_ARGS+=("$1")
    else
      echo "Unrecognized argument(s): $*"
      usage
      exit 1
    fi
  fi
  shift
done

HOST_OS=$(uname)

if [ "$HOST_OS" = 'Darwin' ]; then
  ansible-playbook --ask-become-pass -i inventory ${ROLES} darwin.yml
elif [ "$HOST_OS" = 'Linux' ]; then
  ansible-playbook -i inventory ${VERBOSE+-v} ${ROLES} "${EXTRA_ARGS[@]}" linux.yml
else
  echo "Unknown host OS: $HOST_OS"
  exit 1
fi

trap - EXIT
