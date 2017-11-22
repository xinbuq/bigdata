#!/bin/bash
HADOOP_HOME=/usr/local/hadoop
cd $HADOOP_HOME
./bin/hdfs  dfs  -mkdir /user/xuzhe
./bin/hdfs dfs -copyFromLocal ./scripts/files /user/xuzhe/
./bin/hdfs dfs -chown -R xuzhe:xuzhe  /user/xuzhe
