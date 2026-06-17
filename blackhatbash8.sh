#!/bin/bash
awk '{print $1}' log.txt
awk '{print $2}' log.txt
awk '{print $3}' log.txt

awk '{print $1,$NF}' log.txt

awk -F',' '{print $1}' example_csv.txt

head log.txt

awk 'NR < 10' log.txt

grep "42.236.10.117" log.txt | awk '{print $7}'

sed 's/Mozilla/Godzilla/g' log.txt

sed 's/Mozilla/Godzilla/g' log.txt > newlog.txt
grep "Godzilla" newlog.txt
grep "Mozilla" log.txt
grep -H "Mozilla" log.txt; grep -H "Godzilla" newlog.txt

sed 's/ //g' log.txt > newlog1.txt

sed '1d' log.txt > newlogd.txt

sed '$d' log.txt > newlogL.txt

sed '$d' newlog1.txt > newlogL.txt

sed -n '2,15 p' log.txt

sed -i '1d' log.txt

sleep 100 &
#[1] 19104

ps -ef | grep sleep #We can verify that the spawned process is running by using the ps command
#root           1       0  0 12:26 ?        00:00:00 /bin/sh -c echo Container started trap "exit 0" 15  exec "$@" while sleep 1 & wait $!; do :; done -
#root       19104    1150  0 13:10 pts/2    00:00:00 sleep 100
#root       19351       1  0 13:11 ?        00:00:00 sleep 1
#root       19353    1150  0 13:11 pts/2    00:00:00 grep --color=auto sleep

fg %1 #We can migrate the job from the background to the foreground by issuing the fg command and the job ID:
#sleep 100

CNTRL Z #stop the process that is being carried out

bg %1 #Now that this job is in the background
#[1]+ sleep 100 &

nohup ./my_script.sh & #The nohup command will create a file named nohup.out with standardoutput stream data. Make sure you delete this file if you don’t want it on the filesystem.
