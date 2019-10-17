curl --include --request PATCH http://localhost:4741/books \
--include \
  --header 'Content-Type: application/json' \
  --data '{
    "ticket": {
      "date": "'"${DATE}"'",
      "type_of_pc": "'"${TYPEOFPC}"'",
      "model_number": "'"${MODELNUMBER}"'",
      "description": "'"${DESCRIPTION}"'"
    }
  }'
