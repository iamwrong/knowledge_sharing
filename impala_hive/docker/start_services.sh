#! /usr/bin/env bash
#this is leightweight version of the start_services bash
#script from the cloudera-quick start docker machine 
DAEMONS="\
    mysqld 


DAEMONS="${DAEMONS} \
    zookeeper-server \
    hadoop-hdfs-datanode \
    hadoop-hdfs-namenode \
    hadoop-mapreduce-historyserver \
    hadoop-yarn-nodemanager \
    hadoop-yarn-resourcemanager \
    hive-metastore \
    hive-server2 \
    spark-history-server \
    impala-state-store \
    impala-catalog \
    impala-server"

for daemon in ${DAEMONS}; do
    sudo service ${daemon} start
done