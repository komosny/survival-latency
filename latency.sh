#! /bin/bash
if ! command -v jc &> /dev/null; then
    echo "Install jc to run the script - pip install jc (version > 1.18.2)" 
    exit; fi
echo;echo Deleting previous latency output;echo
rm -rf latency; mkdir latency
start=`date +%s`
machineid=$(cat /etc/machine-id); echo This host id: $machineid
while IFS="," read -r id ip other; do
    echo;echo Processing ping to $ip;echo
    ping  -c1 $ip | tee /dev/tty | jc --ping > latency/$machineid"_"$id"_ping".json
    if [ ${PIPESTATUS[0]} -ne 0 ]; then
        echo Processing traceroute to $ip;echo
        traceroute  $ip | tee /dev/tty | jc --traceroute > latency/$machineid"_"$id"_trace".json; fi
done < points.csv
end=`date +%s`
runtime=$((end-start))
echo;echo Runtime $runtime seconds
