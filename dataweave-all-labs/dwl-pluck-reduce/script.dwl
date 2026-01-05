%dw 2.0
output application/json
---
[payload.data.payload pluck ((value, key, index) ->{
    (key):value
}) reduce ((item, accumulator) -> item ++ accumulator)] map ((item, index) -> {
    name:item.name__c,
    age:item.age__c,
    address:item.address__c,
    salary:item.salary__c
})