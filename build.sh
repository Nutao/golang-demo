# /bin/bash
set -ex

docker run --rm --name golang-build   -v .:/src  -v ./pkg:/go/pkg/mod  golang:1.20-alpine sh -c "cd /src && sh build_in.sh"

# 实际的CI可以运行DinD镜像执行build和push流程
docker build -t  client:v2  -f Dockerfile.Client  .
docker build -t  server:v2  -f Dockerfile.Server  .