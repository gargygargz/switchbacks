#!/bin/bash

# TOKEN="67a236fd6ad9e956e3b81dc5f7b812cd" sh curl-scripts/auth/sign-out.sh

API="http://localhost:4741"
URL_PATH="/sign-out"

curl "${API}${URL_PATH}/" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo
