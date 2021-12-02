#!/bin/sh

# TOKEN=put_token_here sh curl-scripts/events/index.sh

# TOKEN=982c92ecdcb310a4cfdf538695310af1 sh curl-scripts/hikes/index.sh

API="http://localhost:4741"
URL_PATH="/hikes"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo
