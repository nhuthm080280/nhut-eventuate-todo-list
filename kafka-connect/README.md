#note
install confluent

https://docs.confluent.io/platform/current/connect/quickstart.html
https://docs.confluent.io/confluent-cli/current/command-reference/local/services/index.html#confluent-local-services

Mysql connector

https://docs.confluent.io/debezium-connect-mysql-source/current/index.html

https://debezium.io/documentation/reference/tutorial.html

download confluent from https://www.confluent.io/get-started/


export CONFLUENT_HOME=/Users/nhuthuynh/confluent/confluent-6.1.1

install confluent CLI

curl -sL --http1.1 https://cnfl.io/cli | sh -s -- -l
curl -sL --http1.1 https://cnfl.io/cli | sh -s — latest

export PATH=/Users/nhuthuynh/confluent/confluent-6.1.1/bin/bin:$PATH

confluent local services start


## install confluent-hub ,

brew tap confluentinc/homebrew-confluent-hub-client
brew install --cask confluent-hub-client
confluent-hub

## install kafka connect

confluent-hub install confluentinc/kafka-connect-jdbc:latest

https://docs.confluent.io/kafka-connect-jdbc/current/index.html



## create topic

kafka-topics --create \
--bootstrap-server localhost:9092 \
--replication-factor 1 \
--partitions 1 \
--topic mysql-01-events


## comsume topic

kafka-avro-console-consumer --topic test-mysql-jdbc-todo \
--bootstrap-server localhost:2181 \
--from-beginning


## confluent command
#stop local connect
confluent local stop connect
#start stand alone mode
./connect-standalone -daemon /Users/nhuthuynh/confluent/confluent-6.1.1/etc/schema-registry/connect-avro-standalone.properties /Users/nhuthuynh/confluent/confluent-6.1.1/etc/kafka/source-quickstart-sqlite.properties
# copy mysql connector
copy mysql jar file to /share/java/kafka

check log:

cat /logs/connectStandalone.out | grep -i “finished"

# useful document
https://datacadamia.com/dit/kafka/connector/sqlite_standalone

