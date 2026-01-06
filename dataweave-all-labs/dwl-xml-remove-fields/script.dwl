%dw 2.0
output application/json
---
payload mapObject ((value, key, index) ->{
    (key):value mapObject ((value1, key1, index1) -> {
        (key1):value1 mapObject ((value2, key2, index) ->{
            (key2):value2 -- ["ssn","password"]
        } )
    })
} )