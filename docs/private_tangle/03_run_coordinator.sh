#!/bin/bash

. lib.sh
load_config

docker run -t --rm -v `pwd`/data:/data iota/compass/docker:coordinator coordinator_deploy.jar \
	-layers /data/layers \
	-sigMode $sigMode \
	-powMode $powMode \
	-mwm $mwm \
	-security $security \
	-seed $seed \
	-tick $tick \
	-host $host \
	"$@"
