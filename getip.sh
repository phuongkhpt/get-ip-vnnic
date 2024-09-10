#!/usr/bin/env bash

curl -s --header 'User-Agent:Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36' -L http://thongkeinternet.vn/jsp/vnix/danhba_ipasn.jsp -o output.txt

if [[ $? -ne 0 ]]; then
    echo "Error: Curl command failed"
else
	egrep -o '[0-9]+[.][0-9]+[.][0-9]+[.][0-9]+/[0-9]+' abc.txt > ip-vnnic
fi
