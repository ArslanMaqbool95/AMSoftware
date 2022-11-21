table 50102 "Radio Show Number"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20]) { }
        field(2; "Radio Show Type"; Code[10]) { }
        field(3; "Name"; Text[50]) { }
        field(4; "Run Time"; Duration) { }
        field(5; "Host Code"; Code[20]) { }
        field(6; "Host Name"; Text[50]) { }
        field(7; "Average Listners"; Decimal)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = average("Listnership Entry"."Listerner Count"
            where("Radio Show No." = field("No.")));
        }
        field(8; "Audience Share"; Decimal) { }
        field(9; "Advertising Revenue"; Decimal) { }
        field(10; "Royalty Cost"; Decimal) { }
        field(11; "Document No."; Code[20]) { }
        field(12; "Item No."; Code[20]) { }

    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }


    var
        myInt: Integer;

}