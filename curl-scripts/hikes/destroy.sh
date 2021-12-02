#!/bin/bash

# TOKEN=put_token_here ID=put_id_here sh curl-scripts/hikes/destroy.sh

# TOKEN=982c92ecdcb310a4cfdf538695310af1 ID=61a6c581bd3b057ea40bb3b4 sh curl-scripts/hikes/destroy.sh

API="http://localhost:4741"
URL_PATH="/hikes"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo
