# /bin/bash
set -ex
docker build --tag=server:v1  --target=server --progress=plain -f Dockerfile.5  .
docker build --tag=client:v1  --target=client --progress=plain -f Dockerfile.5  .
