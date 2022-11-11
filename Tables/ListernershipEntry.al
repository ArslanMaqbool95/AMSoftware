table 50117 "Listnership Entry"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Listerner Count"; Decimal) { }
        field(2; "Entry No."; Code[20]) { }
        field(3; "Radio Show No."; Code[20]) { }
        //, Date = field ("Date Filter" )
        field(4; "Rating Source Entry No."; Integer) { }
        field(5; "Date"; Date) { }
        field(6; "STart Time"; Time) { }
        field(7; "End Time"; Time) { }
        field(8; "Audience Share"; Decimal) { }
        field(9; "Age Demographic"; Option)
        {
            OptionMembers = ,"0-12","13-18","19-34","35-50","51+";
        }
    }

    keys
    {
        key(Pk; "Entry No.")
        {
            Clustered = true;
        }
        key(Reporting; "Radio Show No.", Date, "Start Time", "Age Demographic")
        {
            SumIndexFields = "Listerner Count", "Audience Share";
        }
    }

    var
        myInt: Integer;

}