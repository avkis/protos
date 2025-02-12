.DEFAULT_GOAL := generate_go

## generate: generates GO code from protobuf files
generate_go:
	@echo "Generating protobuf files"
	protoc -I proto proto/sso/*.proto \
	--go_out=./gen/go/ \
	--go_opt=paths=source_relative \
	--go-grpc_out=./gen/go/ \
	--go-grpc_opt=paths=source_relative


