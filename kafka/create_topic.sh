#!/bin/sh

/opt/kafka/bin/kafka-topics.sh --bootstrap-server localhost:9092 --create --topic $TOPIC