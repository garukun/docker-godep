package main

import (
	"github.com/golang/glog"
	"log"
	"flag"
)

func init() {
	glog.CopyStandardLogTo("INFO")
}

func main() {
	flag.Parse()

	log.Println("Hi there!")
}
