
#!/bin/bash
file="proxies.txt"
current_date_time=$(date '+%Y/%m/%d %H:%M')
while IFS= read -r proxy
	do
		{ echo -n $current_date_time ; echo -n ',' ; echo  $(curl -x $proxy -U "david.pinilla":"|Jn 5DJ\\7inbNniK|m@^ja&>C" -m 180 -w %{time_total},%{http_code} -H Cache-control:private http://ovh.net/files/1Mb.dat -o /dev/null -s) ;} >>$proxy
	done <"$file"
