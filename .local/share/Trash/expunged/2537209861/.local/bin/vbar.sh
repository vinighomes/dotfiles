#!/bin/sh

if [ $# = 0 ]
then
    read value
else
    value="$1"
fi
value="$(echo "$value" | cut -d. -f1)"


if [ -z "$value" ]; then
    bar=☓
elif [ "$value" -le "0" ]; then
    bar=
elif [ "$value" -lt "13" ]; then
    bar=▁
elif [ "$value" -lt "25" ]; then
    bar=▂
elif [ "$value" -lt "38" ]; then
    bar=▃
elif [ "$value" -lt "50" ]; then
    bar=▄
elif [ "$value" -lt "63" ]; then
    bar=▅
elif [ "$value" -lt "75" ]; then
    bar=▆
elif [ "$value" -lt "88" ]; then
    bar=▇
else
    bar=█
fi
printf $bar
