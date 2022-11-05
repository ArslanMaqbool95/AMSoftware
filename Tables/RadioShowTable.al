table 50105 "Radio Show Table"
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
        field(7; "Average Listners"; Decimal) { }
        field(8; "Audience Share"; Decimal) { }
        field(9; "Advertising Revenue"; Decimal) { }
        field(10; "Royalty Cost"; Decimal) { }
        field(11; Frequency; Option)
        {
            OptionMembers = Hourly,Daily,Weekly,Monthly;
        }
        field(12; "PSA Planned Quantity"; Integer) { }
        field(13; "Ads Planned Quantity"; Integer) { }
        field(14; "News Required"; Boolean) { }
        field(15; "News Duration"; Boolean) { }
        field(16; "Sports Required"; Boolean) { }
        field(17; "Sports Duration"; Duration) { }
        field(18; "Weather Required"; Boolean) { }
        field(19; "Weather Duration"; Duration) { }
        field(20; "Data Filter"; Date)
        {
            FieldClass = FlowFilter;
        }
    }

    keys
    {
        key(Pk; "No.")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}