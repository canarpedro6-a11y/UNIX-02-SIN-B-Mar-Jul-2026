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


