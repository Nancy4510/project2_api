curl --include --request POST "http://localhost:4741/tickets" \
--include \
  --header 'Content-Type: application/json' \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "tickets": {
      "date": "'"${DATE}"'",
      "type_of_pc": "'"${TYPEOFPC}"'",
      "model_number": "'"${MODELNUMBER}"'",
      "description": "'"${DESCRIPTION}"'"
    }
  }'

echo
