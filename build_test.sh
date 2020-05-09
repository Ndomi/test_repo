#!/bin/bash

if [ $# -eq 0 ]
  then
    tag='success'
  else
    tag='failure'
fi

docker build -t project:$tag .
