%dw 2.0
output application/json
---
payload groupBy ((item, index) -> item.region)mapObject ((value, key, index) -> {
    (key):sum(value map ((item1, index) -> item1.sales))
})
/*
{
  "South": 300,
  "North": 200
}
*/