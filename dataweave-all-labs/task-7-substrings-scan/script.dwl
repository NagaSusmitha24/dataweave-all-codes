%dw 2.0
output application/json
import * from dw::core::Strings
---
{
    zipCode:(payload.zipCode substringBefore "-") as Number,
    pincode:(payload.pincode substringAfter "-") as Number,
    name:flatten(payload.name scan /[A-Za-z]/) joinBy "" 
}
/*
{ 
   "zipCode": 523112, 
   "pincode": 12345, 
   "name": "Ramakrishna" 
}
*/