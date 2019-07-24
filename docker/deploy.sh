set -ex

version=$(cat ../VERSION | sed -nre 's/^[^0-9]*(([0-9]+\.)*[0-9]+).*/\1/p')
echo "version: $version"

# push it
docker push mirnylab/distiller_env:latest
docker push mirnylab/distiller_env:$version