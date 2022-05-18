package main

import (
	"crypto/rand"
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		p, _ := rand.Prime(rand.Reader, 64)
		fmt.Fprintf(w, "%s\n", p)
	})

	http.ListenAndServe(":8080", nil)
}
