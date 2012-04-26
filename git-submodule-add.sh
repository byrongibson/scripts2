#!/usr/bin/env bash

# $1 = source repo for submodule
# $2 = local name

argv=$@

echo "Adding submodule from repo $1 as $2"

git submodule add $1 $2
