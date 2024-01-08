#!/bin/sh

SERIAL=$1
HOST=$2

docker run --name="$SERIAL-$HOST" -d --restart=unless-stopped --add-host="emqx:$HOST" -e "WB_SERIAL=$SERIAL" -e "COLLECTOR=$HOST:1883" insparkplatform/plc_emulator:latest
