package main

import (
	"fmt"
)

func main() {
	fmt.Println("This container does nothing at all. It's purpose is to be THERE.")
	fmt.Println("Intended usage: create a data only container")
	fmt.Println("docker create -v /hostdir/data:/var/data --name my-data-container rgielen/docker-data-minimal")
}
