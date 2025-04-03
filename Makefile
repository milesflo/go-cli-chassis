install:
	go get .

build:
	go build -v ./...

test:
	go test

# This will return a non-zero if any go files are not formatted.
lint-check:
	test -z $(gofmt -l .)

fix:
	go fmt
