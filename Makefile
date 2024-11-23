
build: chatmaild cmdeploy

chatmaild:
	go build ./cmd/chatmaild

cmdeploy:
	go build ./cmd/cmdeploy

check:
	go test ./cmd/chatmaild
	go test ./cmd/cmdeploy

check-format:
	unformatted=$$(gofmt -l .); echo "$$unformatted"; [ -z "$$unformatted" ] || exit 1

format:
	gofmt -l -w .