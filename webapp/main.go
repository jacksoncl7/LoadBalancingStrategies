package main

import (
	"crypto/rand"
	"fmt"
	"net/http"
	"os"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		pid := os.Getpid()
		p, _ := rand.Prime(rand.Reader, 64)
		fmt.Fprintf(w, "%s - %d\n", p, pid)
	})

	http.ListenAndServe(":8080", nil)
}
