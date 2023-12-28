#!/usr/bin/env bash

myDir="${BASH_SOURCE%/*}"

argo submit "$myDir/hello-world.yaml" --log
