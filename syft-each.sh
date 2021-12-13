#!/bin/bash

# Run syft against each input line

echoerr() { echo "$@" 1>&2; }

while IFS='$\n' read -r line; do
  echoerr "Running Syft for '$line' ..."
  echoerr 
  syft $line
  echoerr 
  echoerr 
done