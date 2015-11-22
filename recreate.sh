#!/bin/bash
DIR=narkopolityka
DBNAME=narko_devel
DBDUMP=narkopolityka10112015.sql

rm -rf $DIR
unzip narkopolityka.zip
cd $DIR/sites/default
rm -f settings.php
ln -s ../../../settings.php settings.php
cd ../..
ln -s ../tsh-migrate tsh-migrate
cd ..
mysql -u root $DBNAME < $DBDUMP
