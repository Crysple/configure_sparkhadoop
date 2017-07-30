#!/bin/bash

#Hadoop configuration path
BP="/home/ubuntu/hadoop-2.6.5/etc/hadoop/"
#spark configuration path
SP="/home/ubuntu/spark-2.1.1-bin-hadoop2.7/conf/"


yes | sudo apt-get update
yes | sudo apt-get upgrade
yes | sudo apt-get install openjdk-8-jre-headless
yes | sudo apt-get install openjdk-8-jdk
yes | sudo apt-get install python
yes | sudo apt-get install scala


#install hadoop
wget -P ~/ http://apache.claz.org/hadoop/common/hadoop-2.6.5/hadoop-2.6.5.tar.gz
tar -xf ~/hadoop-2.6.5.tar.gz -C ~
#install spark
wget -P ~/ https://d3kbcqa49mib13.cloudfront.net/spark-2.1.1-bin-hadoop2.7.tgz
tar -xzvf ~/spark-2.1.1-bin-hadoop2.7.tgz -C ~
#configure hadoop
cp hadoop-env.sh $BP
cp core-site.xml $BP
cp hdfs-site.xml $BP
cp mapred-site.xml $BP
cp yarn-env.sh $BP
cp yarn-site.xml $BP
cp slaves $BP
mkdir ~/hadoop-2.6.5/tmp
#configure spark
cp slaves $SP
cp spark-env.sh $SP

#bash_profile
source .bash_profile

