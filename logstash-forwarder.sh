#!/bin/bash

echo "$green ==> Starting ekino/logstash-forwarder:base$reset"

echo "$cyan --> Setting logstash forwarder config$reset"

: ${LUMBERJACK_ENDPOINT-?"ERROR: The container must be started with '-e LUMBERJACK_ENDPOINT' variable"}

sed -i "s,__LUMBERJACK_ENDPOINT__,${LUMBERJACK_ENDPOINT}," /etc/logstash/config.json
