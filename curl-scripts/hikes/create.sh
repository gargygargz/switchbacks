#!/bin/bash

API="http://localhost:4741"
URL_PATH="/hikes"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "hike": {
      "name": "'"${NAME}"'",
      "location": "'"${LOCATION}"'",
      "distance": "'"${DISTANCE}"'",
      "duration": "'"${DURATION}"'",
      "difficulty": "'"${DIFFICULTY}"'",
      "rating": "'"${RATING}"'",
      "notes": "'"${NOTES}"'"
    }
  }'

echo
