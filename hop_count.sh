#!/bin/bash

total_hops='traceroute www.google.com | tail -n 1 | cut -d " " -f 1 '
echo "The host $host_name is $total_hops hops away"

