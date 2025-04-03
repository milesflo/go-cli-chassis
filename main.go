package main

import "log"

func main() {
	log.Println(welcome("User"))
}

func welcome(name string) string {
	return "Welcome " + name + "!"
}
