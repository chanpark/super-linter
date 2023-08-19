#!/usr/bin/env bash

if [ -z "$USER_ID" -o "$USER_ID" == "0" ]; then
  exec /action/lib/linter.sh
else
  echo "Switching to user id ($USER_ID)"
  adduser -u $USER_ID -h $HOME -D -H super-linter
  su super-linter -c /action/lib/linter.sh
fi
