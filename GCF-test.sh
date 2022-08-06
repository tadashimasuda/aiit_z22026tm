#!/bin/bash

echo "test1:Success"
echo 2 > /tmp/$$-ans
./GCF.sh  2 4 > /tmp/$$-result
diff /tmp/$$-ans /tmp/$$-result || exit 1

echo "test1:Faild"
echo "Error" > /tmp/$$-ans
./GCF.sh 1 > /tmp/$$-result
diff /tmp/$$-ans /tmp/$$-result || exit 1


rm -f /tmp/$$-*
