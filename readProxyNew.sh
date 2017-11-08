#!/bin/bash
file="proxiesNew.txt"
current_date_time=$(date '+%Y/%m/%d %H:%M')
while IFS= read -r proxy
	do
		{ echo -n $current_date_time ; echo -n ',' ; echo  $(curl -x $proxy -U "david.pinilla":"|Jn 5DJ\\7inbNniK|m@^ja&>C" -m 180 -w %{time_total},%{http_code},%{size_download} -H Cache-control:private http://ovh.net/files/1mb.dat -o /dev/null -s) ;} >>$proxy"_1mb"
		sleep 10s
		{ echo -n $current_date_time ; echo -n ',' ; echo $(curl -x $proxy  -U "david.pinilla":"|Jn 5DJ\\7inbNniK|m@^ja&>C" -m 180 -w %{time_total},%{http_code},%{size_download} -H Cache-control:private http://ovh.net/files/10Mb.dat -o /dev/null -s) ;} >>$proxy"_10mb"
		sleep 10s
		{ echo -n $current_date_time ; echo -n ',' ; echo $(curl -x $proxy  -U "david.pinilla":"|Jn 5DJ\\7inbNniK|m@^ja&>C" -m 180 -w %{time_total},%{http_code},%{size_download} -H Cache-control:private http://ovh.net/files/100Mb.dat -o /dev/null -s) ;} >>$proxy"_100mb"
		sleep 10s
		{ echo -n $current_date_time ; echo -n ',' ; echo  $(curl -x $proxy -U "david.pinilla":"|Jn 5DJ\\7inbNniK|m@^ja&>C" -m 180 -w %{time_total},%{http_code} -H Cache-control:private http://ipv4.download.thinkbroadband.com/5MB.zip -o /dev/null -s) ;} >>$proxy"_1gb"
		sleep 10s
		{ echo -n $current_date_time ; echo -n ',' ; echo  $(curl -x $proxy -U "david.pinilla":"|Jn 5DJ\\7inbNniK|m@^ja&>C" -m 180 -w %{time_total},%{http_code},%{size_download} -H Cache-control:private https://www.vevo.com -o /dev/null -s) ;} >>$proxy"_vevo"
		sleep 10s
		{ echo -n $current_date_time ; echo -n ',' ; echo  $(curl -x $proxy -U "david.pinilla":"|Jn 5DJ\\7inbNniK|m@^ja&>C" -m 180 -w %{time_total},%{http_code},%{size_download} -H Cache-control:private https://www.ted.com -o /dev/null -s) ;} >>$proxy"_ted"
		sleep 10s
		{ echo -n $current_date_time ; echo -n ',' ; echo  $(curl -x $proxy -U "david.pinilla":"|Jn 5DJ\\7inbNniK|m@^ja&>C" -m 180 -w %{time_total},%{http_code} -H Cache-control:private https://www.slideshare.net -o /dev/null -s) ;} >>$proxy"_slideshare"

	done <"$file"
