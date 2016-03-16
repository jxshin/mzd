#!/bin/sh  

# a simple shell script to download the Bugzilla database dump of Mozilla

for postfix in {a..z} ; do
    wget -c --no-check-certificate "https://raw.githubusercontent.com/jxshin/mzdata/master/data/2013/level0/Mozilla-Bugzilla-Public-02-January-2013.sql.gz_a"$postfix
done

for postfix in {a..l} ; do
    wget -c --no-check-certificate "https://raw.githubusercontent.com/jxshin/mzdata/master/data/2013/level0/Mozilla-Bugzilla-Public-02-January-2013.sql.gz_b"$postfix
done

cat Mozilla-Bugzilla-Public-02-January-2013.sql.gz_* > Mozilla-Bugzilla-Public-02-January-2013.sql.gz

gzip -d Mozilla-Bugzilla-Public-02-January-2013.sql.gz
