#!/bin/bash

echo "test1:Success Test"
echo 2 > /tmp/$$-ans
./GCD.sh 2 4 > /tmp/$$-result
diff /tmp/$$-ans /tmp/$$-result || exit 1

#引数が一つの時
echo "test2:Faild Test"
echo "Error" > /tmp/$$-ans
./GCD.sh 1 > /tmp/$$-result
diff /tmp/$$-ans /tmp/$$-result || exit 1

#引数が0の時
echo "test3:Faild Test"
echo "Error" > /tmp/$$-ans
./GCD.sh > /tmp/$$-result
diff /tmp/$$-ans /tmp/$$-result || exit 1

#引数が数字で無いとき
echo "test4:Faild Test"
echo "Error" > /tmp/$$-ans
./GCD.sh a a > /tmp/$$-result
diff /tmp/$$-ans /tmp/$$-result || exit 1

#引数が負の数のとき
echo "test5:Faild Test"
echo "Error" > /tmp/$$-ans
./GCD.sh -2 4 > /tmp/$$-result
diff /tmp/$$-ans /tmp/$$-result || exit 1

rm -f /tmp/$$-*
