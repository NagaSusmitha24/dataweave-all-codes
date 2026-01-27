%dw 2.0
output application/json
---
payload map ((item, index) -> {
    id:item.id,
    code:item.code,
    date_f:item.date_f as Date{format:"dd/MM/yyyy"} as Date,
    date_:item.date_ as Date{format:"dd-MM-yyyy"} as Date
})
/*
[ 

  { 

    "id": "2198", 

    "code": "073", 

    "date_f": "2023-03-12", 

    "date_": "9999-12-31" 

  }, 

  { 

    "id": "2198", 

    "code": "073", 

    "date_f": "2022-03-22", 

    "date_": "9997-02-11" 

  } 

] 
*/