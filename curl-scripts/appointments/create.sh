API="http://localhost:4741"
URL_PATH="/appointments"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
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
