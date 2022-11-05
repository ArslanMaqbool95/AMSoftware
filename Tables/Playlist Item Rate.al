table 50112 "Playlist Item Rate"
{
    //DataClassification = ToBeClassified;

    fields
    {
        field(1; "Source Type"; Option)
        {
            OptionMembers = Vendor,Customer;

        }
        field(2; "Source No."; Code[20]) { }
        field(3; "Item No."; Code[20]) { }
        field(4; "Start Time"; Time) { }
        field(5; "End Time"; Time) { }
        field(6; "Rate Amount"; Decimal) { }
        field(7; "Publisher Code"; Code[10]) { }
    }

    keys
    {
        key(Pk; "Source No.")
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