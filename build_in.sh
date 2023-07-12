# /bin/sh
set -ex

go env -w GOPROXY=https://goproxy.cn,direct
go mod download -x

go build -o ./bin/client ./cmd/client
go build -o ./bin/server ./cmd/server