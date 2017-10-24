
#!/bin/bash
file="proxies.txt"
current_date_time=$(date '+%Y/%m/%d %H:%M')
while IFS= read -r proxy
do
        { echo -n $current_date_time ; echo -n '\t' ; echo  $(curl -m 180 -w %{$
done <"$file"

