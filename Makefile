SRC=*.go

# default s3-cli command here
s3-cli: $(SRC)
	go build -o $@ $(SRC)

clean: $(SRC)
	rm -f s3-cli

test:
	go test

# for run s3 command here
# exclude test go file to run main.go
run:
	 find ./ -not -name "test" | xargs go run
