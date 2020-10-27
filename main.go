package main

import (
	"fmt"
	"log"
	"net/http"
)

func sayHello(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "hello world")
}

// the most simple server.
var addr = ":80"

func main() {
	http.HandleFunc("/", sayHello)
	fmt.Println("start ", addr)
	log.Fatal(http.ListenAndServe(addr, nil))
}
