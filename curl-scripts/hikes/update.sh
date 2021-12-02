#!/bin/bash

# TOKEN=put_token_here ID=put_id_here NAME="New Meetup" LOCATION=Seattle DATE="2021-11-16" sh curl-scripts/hikes/update.sh

# TOKEN=982c92ecdcb310a4cfdf538695310af1 ID=61a6c581bd3b057ea40bb3b4 NAME="Redwood Grove" LOCATION="Oakland, CA" DISTANCE="3 miles" DURATION="1 hour" DIFFICULTY="Easy" RATING="5/5" NOTES="Huge treezzzzzz, what more could you need" sh curl-scripts/hikes/update.sh

API="http://localhost:4741"
URL_PATH="/hikes"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
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
