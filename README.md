# Protobuf for CREATON's services

### Generate GO code from proto files
````bash
make gen_auth_go
````

### Add new tag after each commit
````bash
git tag v0.0.1
git push origin v0.0.1
````

 ```bash
git tag -a golang/auth/v0.0.1 -m "golang/auth/v0.0.1"
git tag -a golang/logger/v0.0.1 -m "golang/logger/v0.0.1"
git push --tags
 ```

### Importing protos into a project
```bash
go get -u github.com/avkis/protos/golang/auth@latest
```
or
```bash
go get -u github.com/avkis/protos/golang/auth@v0.0.1
```