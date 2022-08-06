#!/bin/bash

echo "test1:Faild"
echo 2 > /tmp/$$-ans
./GCF.sh  2 4 > /tmp/$$-result
diff /tmp/$$-ans /tmp/$$-result || exit1
