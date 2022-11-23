table 50131 "Sales Order Line"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20]) { }
        field(2; "Radio Show Type"; Code[10]) { }
        field(3; "Name"; Text[50]) { }
        field(4; "Run Time"; Duration) { }
        field(5; "Host Name"; Text[50]) { }
        field(6; "Document No."; Code[20]) { }
        field(7; "Item No."; Code[20]) { }

    }

    keys
    {
        key(PK; "No.", "Item No.")
        {
            Clustered = true;
        }
    }


    var
        myInt: Integer;

}