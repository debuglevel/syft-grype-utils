#!/bin/bash

# Extract docker images from docker-compose.yml input

grep image | sed 's/.*image: //g' | sed 's/"//g'