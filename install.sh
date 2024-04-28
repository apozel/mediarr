#!/bin/bash



for x in $(awk '$1 == "-"{ if (key == "volumes:") print $NF; next } {key=$1}' docker-compose.yml | cut  -d ':' -f 1 | grep -v docker); do
  mkdir -p "${x}"
done
