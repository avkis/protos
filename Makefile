.DEFAULT_GOAL := gen_auth_go

## gen_auth_go: generates GO code for SSO service from protobuf files
gen_auth_go:
	@echo "Generating protobuf files"
	protoc -I proto proto/auth/*.proto \
	--go_out=./gen/go/ \
	--go_opt=paths=source_relative \
	--go-grpc_out=./gen/go/ \
	--go-grpc_opt=paths=source_relative


