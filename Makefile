lint:
	go mod tidy
	go mod verify
	go fmt ./...

check:
	go vet ./...
	staticcheck ./...
	go test -race -vet=off ./...