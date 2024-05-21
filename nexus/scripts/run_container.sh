#!/bin/bash

echo "Running container"

sysctl -w vm.max_map_count=524288
sysctl -w fs.file-max=131072

docker compose -f /vagrant/scripts/compose.yaml up -d
