#!/usr/bin/env bash
# USING OPTION : phishtank

echo "Follow latest archive here : http://commoncrawl.org/2018/10/october-2018-crawl-archive-now-available/ "
echo "List of Top Level Domains : *.com *.org *.co.uk *.ru && *.net *.cn *.cz *.kp *.us "

export FILELOCATION=$PWD
rm -rf siem/clean-CC-MAIN-2018-43-index-.*.json
hdfs dfs -mkdir -p data/raw/commoncrawl/dt=20181112

export FNAME=CC-MAIN-2018-43-index-.com.json
sed -n -e 's/^.*\({"url":\)/\1/p' $FNAME >> clean-$FNAME
tail -n 1 "$FILELOCATION/clean-$FNAME" | wc -c | xargs -I {} truncate "$FILELOCATION/clean-$FNAME" -s -{}
mv clean-$FNAME siem/clean_data/
hdfs dfs -copyFromLocal -f siem/clean_data/clean-$FNAME data/raw/commoncrawl/dt=20181112

export FNAME=CC-MAIN-2018-43-index-.org.json
sed -n -e 's/^.*\({"url":\)/\1/p' $FNAME >> clean-$FNAME
tail -n 1 "$FILELOCATION/clean-$FNAME" | wc -c | xargs -I {} truncate "$FILELOCATION/clean-$FNAME" -s -{}
mv clean-$FNAME siem/clean_data/
hdfs dfs -copyFromLocal -f siem/clean_data/clean-$FNAME data/raw/commoncrawl/dt=20181112

export FNAME=CC-MAIN-2018-43-index-.co.uk.json
sed -n -e 's/^.*\({"url":\)/\1/p' $FNAME >> clean-$FNAME
tail -n 1 "$FILELOCATION/clean-$FNAME" | wc -c | xargs -I {} truncate "$FILELOCATION/clean-$FNAME" -s -{}
mv clean-$FNAME siem/clean_data/
hdfs dfs -copyFromLocal -f siem/clean_data/clean-$FNAME data/raw/commoncrawl/dt=20181112

export FNAME=CC-MAIN-2018-43-index-.ru.json
sed -n -e 's/^.*\({"url":\)/\1/p' $FNAME >> clean-$FNAME
tail -n 1 "$FILELOCATION/clean-$FNAME" | wc -c | xargs -I {} truncate "$FILELOCATION/clean-$FNAME" -s -{}
mv clean-$FNAME siem/clean_data/
hdfs dfs -copyFromLocal -f siem/clean_data/clean-$FNAME data/raw/commoncrawl/dt=20181112

export FNAME=CC-MAIN-2018-43-index-.net.json
sed -n -e 's/^.*\({"url":\)/\1/p' $FNAME >> clean-$FNAME
tail -n 1 "$FILELOCATION/clean-$FNAME" | wc -c | xargs -I {} truncate "$FILELOCATION/clean-$FNAME" -s -{}
mv clean-$FNAME siem/clean_data/
hdfs dfs -copyFromLocal -f siem/clean_data/clean-$FNAME data/raw/commoncrawl/dt=20181112

export FNAME=CC-MAIN-2018-43-index-.cn.json
sed -n -e 's/^.*\({"url":\)/\1/p' $FNAME >> clean-$FNAME
tail -n 1 "$FILELOCATION/clean-$FNAME" | wc -c | xargs -I {} truncate "$FILELOCATION/clean-$FNAME" -s -{}
mv clean-$FNAME siem/clean_data/
hdfs dfs -copyFromLocal -f siem/clean_data/clean-$FNAME data/raw/commoncrawl/dt=20181112

export FNAME=CC-MAIN-2018-43-index-.cz.json
sed -n -e 's/^.*\({"url":\)/\1/p' $FNAME >> clean-$FNAME
tail -n 1 "$FILELOCATION/clean-$FNAME" | wc -c | xargs -I {} truncate "$FILELOCATION/clean-$FNAME" -s -{}
mv clean-$FNAME siem/clean_data/
hdfs dfs -copyFromLocal -f siem/clean_data/clean-$FNAME data/raw/commoncrawl/dt=20181112

export FNAME=CC-MAIN-2018-43-index-.kp.json
sed -n -e 's/^.*\({"url":\)/\1/p' $FNAME >> clean-$FNAME
tail -n 1 "$FILELOCATION/clean_data/clean-$FNAME" | wc -c | xargs -I {} truncate "$FILELOCATION/clean-$FNAME" -s -{}
mv clean-$FNAME siem/
hdfs dfs -copyFromLocal -f siem/clean_data/clean-$FNAME data/raw/commoncrawl/dt=20181112

export FNAME=CC-MAIN-2018-43-index-.us.json
sed -n -e 's/^.*\({"url":\)/\1/p' $FNAME >> clean-$FNAME
tail -n 1 "$FILELOCATION/clean-$FNAME" | wc -c | xargs -I {} truncate "$FILELOCATION/clean-$FNAME" -s -{}
mv clean-$FNAME siem/clean_data/
hdfs dfs -copyFromLocal -f siem/clean_data/clean-$FNAME data/raw/commoncrawl/dt=20181112

echo "Done!"
