%dw 2.0
output application/json
---
payload mapObject ((value, key, index) -> {
   ( upper((key))):if(value is Object) value mapObject ((value1,key1,index1)->{
       ( upper((key1))):upper(value1)
   }) else if(value is Array) value map(upper($))  else upper(value)
})