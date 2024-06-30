package main

import (
	"fmt"
	"net/http"
)

func helloWorldHandler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hallo Welt!")
}

func main() {
	http.HandleFunc("/hello", helloWorldHandler)
	http.ListenAndServe(":8080", nil)
}
