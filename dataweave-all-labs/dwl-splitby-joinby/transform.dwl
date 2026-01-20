%dw 2.0
output application/json
---
{
    Bank:payload.Bank,
    SysID:payload.IFS ++ payload.SysID splitBy  " " joinBy "-"
}