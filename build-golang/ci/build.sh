#!/bin/bash
 
set -e -u -x
 
export GOPATH=$PWD/gopath
export PATH=$PWD/gopath/bin:$PATH
 
cd concourse-pipelines/build-golang

cd cmd/cake

echo
echo "Building..."
go build -v

echo
echo "Smoke test..."
./cake
