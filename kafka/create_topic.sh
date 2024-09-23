#!/bin/sh

/opt/kafka/bin/kafka-topics.sh --bootstrap-server $BROKER_HOST:9092 --create --if-not-exists --topic $TOPIC