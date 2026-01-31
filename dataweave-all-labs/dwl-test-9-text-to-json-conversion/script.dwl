%dw 2.0
output application/json
var x=payload splitBy "\n"
---
{
  "metadata": {
    "source": "ICD-10-CM",
    "version": "2026",
    "totalCodes": 400,
    "generatedAt": "2026-01-30T11:59:22Z"
  },
  codes:x map {
      id:$$ + 1,
      code:($ splitBy "")[0 to 6] joinBy "",
      description:($ splitBy "")[7 to -1] joinBy "",
      category:($ splitBy "")[0 to 2] joinBy "",
      isActive:true
  }
}
/*
{
  "metadata": {
    "source": "ICD-10-CM",
    "version": "2026",
    "totalCodes": 400,
    "generatedAt": "2026-01-30T11:59:22Z"
  },
  "codes": [
    {
      "id": 1,
      "code": "O35EXX9",
      "description": "Maternal care for other (suspected) fetal abnormality and damage, fetal genitourinary anomalies, other fetus",
      "category": "O35",
      "isActive": true
    },
    {
      "id": 2,
      "code": "O35FXX0",
      "description": "Maternal care for other (suspected) fetal abnormality and damage, fetal musculoskeletal anomalies of trunk, not applicable or unspecified",
      "category": "O35",
      "isActive": true
    },
    {
      "id": 3,
      "code": "O35FXX1",
      "description": "Maternal care for other (suspected) fetal abnormality and damage, fetal musculoskeletal anomalies of trunk, fetus 1",
      "category": "O35",
      "isActive": true
    },
    {
      "id": 4,
      "code": "O35FXX2",
      "description": "Maternal care for other (suspected) fetal abnormality and damage, fetal musculoskeletal anomalies of trunk, fetus 2",
      "category": "O35",
      "isActive": true
    },
    {
      "id": 5,
      "code": "O35FXX3",
      "description": "Maternal care for other (suspected) fetal abnormality and damage, fetal musculoskeletal anomalies of trunk, fetus 3",
      "category": "O35",
      "isActive": true
    }
  ]
}


*/