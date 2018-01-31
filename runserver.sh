#!/bin/sh
    ps -ef|grep master.py | grep -v grep | awk '{print $2}'|xargs kill -9
    nohup python3 master.py -m 0.0.0.0:10000 -c 0.0.0.0:1883  >> /root/HGShootback/shootback/nohup.10000.1883 &
    nohup python3 master.py -m 0.0.0.0:10001 -c 0.0.0.0:8080  >> /root/HGShootback/shootback/nohup.10001.8080 &
    nohup python3 master.py -m 0.0.0.0:10002 -c 0.0.0.0:9001  >> /root/HGShootback/shootback/nohup.10002.9001 &
    nohup python3 master.py -m 0.0.0.0:10003 -c 0.0.0.0:8070  >> /root/HGShootback/shootback/nohup.10003.8070 &

