.DEFAULT_GOAL := gen_sso_go

## gen_sso_go: generates GO code for SSO service from protobuf files
gen_sso_go:
	@echo "Generating protobuf files"
	protoc -I proto proto/sso/*.proto \
	--go_out=./gen/go/ \
	--go_opt=paths=source_relative \
	--go-grpc_out=./gen/go/ \
	--go-grpc_opt=paths=source_relative


