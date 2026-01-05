%dw 2.0
output application/json
---
payload.customers map ((item, index) -> {
    customerName:item.name,
    totalOrder:sum((payload.orders filter ((item1, index) -> item1.customerId==item.id)).*amount)
})
/*
[
  { "customerName": "Uday", "totalPurchase": 5000 },
  { "customerName": "Teja", "totalPurchase": 1500 }
]
*/