curl "http://localhost:4741/hardwares" \
--include \
--request POST \
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
