#!/bin/bash
case $1 in 
	'freshQ' ) CMD=./bin/yarn;ARGS="rmadmin -refreshQueues" ;;
	'initDirs') CMD="sh ./scripts/init_env.sh" ;;
		* ) CMD="$@"
esac
docker exec -it hadoop-cluster $CMD $ARGS
