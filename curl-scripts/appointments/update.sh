API="http://localhost:4741"
URL_PATH="/appointments"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
--header "Authorization: Bearer ${TOKEN}" \
--data '{
    "appointment": {
      "name": "'"${NAME}"'",
      "email": "'"${EMAIL}"'",
      "phone": "'"${PHONE}"'",
      "date": "'"${DATE}"'",
      "time": "'"${TIME}"'"
    }
  }'

echo
