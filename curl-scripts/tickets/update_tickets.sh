curl --include --request PATCH "http://localhost:4741/tickets/${ID}" \
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
