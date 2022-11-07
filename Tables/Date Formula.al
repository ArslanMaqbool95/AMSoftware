table 50115 "Date Formula"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; Code[10]) { }
        field(2; "Reference for Date Calculation"; Date) { }
        field(3; "Date Formula to Test"; DateFormula) { }
        field(4; "Date Result"; Date) { }
    }

    keys
    {
        key(Pk; "Primary Key")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    local procedure CalculateNewDate()
    begin
        "Date Result" := CalcDate("Date Formula to Test", "Reference for Date Calculation");
    end;

}