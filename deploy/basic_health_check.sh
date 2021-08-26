#!/bin/bash

for i in `seq 1 3`;
do
  HTTP_CODE=`curl --write-out '%{http_code}' -o /dev/null -m 10 -q -s http://localhost:8080/hc/`
  if [ "$HTTP_CODE" == "200" ]; then
    echo "Successfully pinged healtcheck."
    exit 0;
  fi
  echo "Attempt to curl endpoint returned HTTP Code $HTTP_CODE. Backing off and retrying."
  sleep 15
done
echo "Server did not come up after expected time. Failing."
exit 1