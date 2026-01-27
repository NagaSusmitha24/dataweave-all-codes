%dw 2.0
output application/json
import * from dw::util::Values
---
payload mask  "SSN" with ("***_**_" ++ $[-4 to -1])

/*
{ 

  "payload": [ 

    { 

      "Account": { 

        "AccountId": "145661114", 

        "Name": "Max Mule", 

        "Phone": "998-889-8787", 

        "SSN": "***-**-6789" 

      }, 

      "CreditDebitIndicator": "Credit", 

      "Type": "ClosingAvailable", 

      "DateTime": "12/12/2022", 

      "Amount": { 

        "Amount": "10,000,000.00", 

        "Currency": "GBP" 

      }, 

      "CreditLine": { 

        "Included": false, 

        "Type": "Available", 

        "Amount": { 

          "Currency": "USD", 

          "Amount": "1,000,000.00" 

        } 

      } 

    }, 

    { 

      "Account": { 

        "AccountId": "145661113", 

        "Name": "Mini Mule", 

        "Phone": "123-456-7890", 

        "SSN": "***-**-8787" 

      }, 

      "CreditDebitIndicator": "Credit", 

      "Type": "ClosingAvailable", 

      "DateTime": "12/12/2022", 

      "Amount": { 

        "Amount": "10,123,000.00", 

        "Currency": "GBP" 

      }, 

      "CreditLine": { 

        "Included": false, 

        "Type": "Available", 

        "Amount": { 

          "Currency": "USD", 

          "Amount": "1,456,000.00" 

        } 

      } 

    } 

  ] 

} 
*/