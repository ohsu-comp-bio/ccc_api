#!/bin/bash

BASEDIR=$(dirname $0)

for a in `cat $BASEDIR/proto/core_api.list`; do 
  echo -n $a " "
done