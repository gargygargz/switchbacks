#!/bin/bash

# TOKEN=982c92ecdcb310a4cfdf538695310af1 NAME="Panorama View" LOCATION="Oakland, CA" DISTANCE="5 miles" DURATION="2 hours" DIFFICULTY="Moderate" RATING="4 out of 5" NOTES="I love this trail, great views" sh curl-scripts/hikes/create.sh

# TOKEN=982c92ecdcb310a4cfdf538695310af1 NAME="Redwood Grove" LOCATION="Oakland, CA" DISTANCE="3 miles" DURATION="1 hour" DIFFICULTY="Easy" RATING="5/5" NOTES="Huge trees, what more could you need" sh curl-scripts/hikes/create.sh

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
