curl --include --request PATCH "http://localhost:4741/hardwares/${ID}" \
  --header 'Content-Type: application/json' \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "hardware": {
        "date": "'"${DATE}"'",
        "name_of_hardware": "'"${NAMEOFHARDWARE}"'",
        "processor_speed": "'"${PROCESSORSPEED}"'",
        "memory": "'"${MEMORY}"'",
        "serial_number": "'"${SERIALNUMBER}"'"
      }
    }'

echo
