.DEFAULT_GOAL := gen_auth_go

# Auth Service
## gen_auth_go: generates GO code from proto files
gen_auth_go:
	@echo "Generating golang files"
	protoc -I ./auth \
	--go_out=./golang/auth/ \
	--go_opt=paths=source_relative \
	--go-grpc_out=./golang/auth/ \
	--go-grpc_opt=paths=source_relative \
	./auth/*.proto


## gen_auth_python: generates Python code from proto files
gen_auth_python:
	@echo "Generating python files"
	python -m grpc_tools.protoc \
	-Iauth \
	--python_out=./python/auth/ \
	--grpc_python_out=./python/auth/ \
	--pyi_out=./python/auth/ \
	auth/auth.proto

# Logger Service
## gen_logger_go: generates GO code from proto files
gen_logger_go:
	@echo "Generating golang files"
	protoc -I ./logger \
	--go_out=./golang/logger/ \
	--go_opt=paths=source_relative \
	--go-grpc_out=./golang/logger/ \
	--go-grpc_opt=paths=source_relative \
	./logger/*.proto


## gen_logger_python: generates Python code from proto files
gen_logger_python:
	@echo "Generating python files"
	python -m grpc_tools.protoc \
	-Ilogger \
	--python_out=./python/logger/ \
	--grpc_python_out=./python/logger/ \
	--pyi_out=./python/logger/ \
	logger/logger.proto


