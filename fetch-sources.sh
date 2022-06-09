#!/bin/bash

echo '*****************************************'
printf '\e[1;32m%-6s\e[m\n' "pdfalto build"

echo '*****************************************'

git clone https://github.com/kermitt2/pdfalto.git
cd pdfalto
git submodule update --init --recursive
