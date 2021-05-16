package main

import (
	"fmt"

	"github.com/marco-m/concourse-pipelines/build-golang/hello"

	"gopkg.in/alecthomas/kingpin.v2"
)

func main() {
	var verbose = kingpin.Flag("verbose", "Verbose mode.").Short('v').Bool()
	kingpin.Parse()
	fmt.Println(*verbose, hello.Answer())
}
