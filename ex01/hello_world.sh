#!/bin/bash

if [[ -z $1 ]]
then
  echo "Hello, World!"
fi

if [[ -n $1 ]]
then
  echo "Hello, $1!"
fi
