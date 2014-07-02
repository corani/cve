#!/bin/bash
wget http://cve.mitre.org/data/downloads/allitems.txt.gz
gunzip -f allitems.txt.gz
git add allitems.txt
git commit -m "Update `date +%Y-%m-%d`"
git push origin master
