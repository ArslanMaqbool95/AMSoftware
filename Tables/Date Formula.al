/// <summary>
/// Table Date Formula (ID 50115).
/// </summary>
table 50115 "Date Formula"
{
    fields
    {
        field(1; "Primary key"; Code[10]) { }
        field(2; "Reference for Date Calculation"; Date)
        {
            trigger OnValidate()
            begin
                CalculateNewDate();
            end;
        }
        field(3; "Date Formula to Test"; DateFormula)
        {
            trigger OnValidate()
            begin
                CalculateNewDate();
            end;
        }


        field(4; "Date Result"; Date) { }
    }




    local procedure CalculateNewDate()
    begin
        "Date Result" := CalcDate("Date Formula to Test", "Reference for Date Calculation")
    end;

}