%dw 2.0
output application/json
import * from dw::core::Strings
---
payload map ((item, index) -> {
    firstName:item.fullName substringBefore  " ",
    lastName:item.fullName substringAfter  " ",
    AddrWithValuesOf:valuesOf(item --["empId","fullName","street","dept","joinedDate","miles"])joinBy ",",
    AddrWithPluck:valuesOf(item --["empId","fullName","street","dept","joinedDate","miles"])joinBy ",",
    miles:item.miles,
    DateofJoin:(item.joinedDate as Date) as Date{format:"dd-MMM-yyyy"}

})

/*
[
  {
    "firstName": "Peter",
    "lastName": "parker",
    "AddrWithValuesOf": "San Francisco,veniam,sit,Mexico",
    "AddrWithPluck": "San Francisco,veniam,sit,Mexico",
    "miles": 68,
    "DateofJoin": "22-Dec-2021"
  },
  {
    "firstName": "Joseph",
    "lastName": "charles",
    "AddrWithValuesOf": "Bangalore,Karnataka,560100,India",
    "AddrWithPluck": "Bangalore,Karnataka,560100,India",
    "miles": 49,
    "DateofJoin": "15-Nov-2021"
  }
]
*/