#!/bin/bash
i=1
while read line # 変数lineに1行ずつ格納される
do
    echo $line
    mkdir -p $line 2>/dev/null
done <$1 # ここで読み込むファイルを指定(引数)