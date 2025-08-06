.DEFAULT_GOAL := gen_auth_go

## gen_auth_go: generates GO code for auth service from protobuf files
gen_auth_go:
	@echo "Generating protobuf files"
	protoc -I ./auth \
	--go_out=./golang/auth/ \
	--go_opt=paths=source_relative \
	--go-grpc_out=./golang/auth/ \
	--go-grpc_opt=paths=source_relative \
	./auth/*.proto


