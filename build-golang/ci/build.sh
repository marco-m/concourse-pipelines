#!/bin/bash
 
set -e -u -x
 
export GOPATH=$PWD/depspath:$PWD/gopath
export PATH=$PWD/depspath/bin:$PWD/gopath/bin:$PATH
 
cd gopath/src/github.com/marco-m/concourse-pipelines/build-golang

cd cmd/cake

echo
echo "Fetching dependencies..."
go get -v

echo
echo "Building..."
go build -v

echo
echo "Smoke test..."
./cake
