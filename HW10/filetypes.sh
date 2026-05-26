#!/bin/bash
echo -n "파일/디렉토리 이름 입력: "
read fname

if [ ! -e "$fname" ]; then
    echo "$fname ...은 존재하지 않습니다."
elif [ -h "$fname" ]; then
    echo "$fname ...은 심볼릭링크 입니다."
elif [ -f "$fname" ]; then
    echo "$fname ...은 보통파일 입니다."
elif [ -d "$fname" ]; then
    echo "$fname ...은 디렉토리 입니다."
elif [ -c "$fname" ]; then
    echo "$fname ...은 문자장치 입니다."
elif [ -b "$fname" ]; then
    echo "$fname ...은 블록장치 입니다."
elif [ -p "$fname" ] || [ -S "$fname" ]; then
    echo "$fname ...은 파이프/소켓 입니다."
else
    echo "$fname ...은 알 수 없는 유형입니다."
fi
