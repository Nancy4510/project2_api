curl --include --request PATCH http://localhost:4741/tickets/${ID} \
  --header 'Content-Type: application/json' \
  --data '{
    "book": {
      "date": "'"${DATE}"'",
      "description": "'"${DESCRIPTION}"'"
    }
  }'
