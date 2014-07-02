#!/bin/bash
exec 1<&-
exec 2<&-
exec 1<> out.log
exec 2>&1
wget http://cve.mitre.org/data/downloads/allitems.txt.gz
gunzip -f allitems.txt.gz
git add allitems.txt
git commit -m "Update `date +%Y-%m-%d`"
git push origin master
