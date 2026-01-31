%dw 2.0
output application/json

---
payload."test 1"map ((item, index) ->item--["billing_group","alt_bill_day","acct_currency"]mapObject ((value, key, index) ->{
    (key):if(value is Array) value map ((item, index) -> item mapObject ((value1, key1, index) -> {
        (key):if (value1 is String)lower(value1) else value1
    })) else value
} ))reduce($$ ++ $)

/*
{
  "acct_id": "9395dtYAC",
  "orderitems": [
    {
      "orderitems": "test1",
      "orderitems": 1
    },
    {
      "orderitems": "test2",
      "orderitems": 1
    },
    {
      "orderitems": "test3",
      "orderitems": 1
    }
  ]
}
*/


