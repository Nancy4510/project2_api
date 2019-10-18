curl "http://localhost:4741/tickets" \
--include \
--request POST \
  --header 'Content-Type: application/json' \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "ticket": {
      "date": "'"${DATE}"'",
      "type_of_pc": "'"${TYPEOFPC}"'",
      "model_number": "'"${MODELNUMBER}"'",
      "description": "'"${DESCRIPTION}"'"
    }
  }'

echo
