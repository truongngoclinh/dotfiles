def rid_delete_user() {
 AUTHORIZATION=“Bearer $( \
     curl -sL -X POST https://stg.api.accounts.id.rakuten.co.jp/v1/oAuth/tokens?grant_type=client_credentials \
     -H ‘content-type: application/x-www-form-urlencoded’ \
     -d ‘client_id=661d0f47-02b1-46bb-8749-8a89bc375cab&client_secret=%242a%2404%24jJkS%2FGBrYtfOaSdQ768hHurXX39Q7fZGKBpZMI9kwSY4W8g53Duge’ \
     | jq -cr .access_token)”
 curl -sL -X DELETE “https://stg.api.accounts.id.rakuten.co.jp/v1/members/$1?hardDelete=true” -H “authorization: $AUTHORIZATION” | jq
}

