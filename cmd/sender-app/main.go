package main

import (
	"log"
	"time"
)

func main() {
	for {
		log.Println("sending it...")
		time.Sleep(10 * time.Second)
	}
}
