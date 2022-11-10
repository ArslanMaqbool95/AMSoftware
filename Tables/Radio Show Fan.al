table 50119 "Radio Show Fan"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20]) { }
        field(2; "Radio Show No."; Code[20]) { }
        field(3; Name; Text[50]) { }
        field(4; "Email"; Text[250]) { }
        field(5; "Last Contacted"; Date) { }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

}