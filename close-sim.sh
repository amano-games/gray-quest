#/bin/bash
ps -ef | grep 'PlaydateSimulator' | grep -v grep | awk '{print $2}' | xargs -r kill -9
