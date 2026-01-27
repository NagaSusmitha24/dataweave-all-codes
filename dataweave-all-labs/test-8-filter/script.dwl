%dw 2.0
output application/json
var x={
    "status":"Active"
}
---
flatten((payload filter ((item, index) -> item.age<30)) map ((item, index) -> item -"firstName" ++ x mapObject ((value, key, index) -> {
    (upper(key)):value
})))

/*
[
  {
    "LASTNAME": "Gonsalves",
    "AGE": 28,
    "SALARY": 60000,
    "STATUS": "Active"
  },
  {
    "LASTNAME": "Watson",
    "AGE": 27,
    "SALARY": 50000,
    "STATUS": "Active"
  }
]
*/