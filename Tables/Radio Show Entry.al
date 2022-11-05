table 50113 "Radio Show Entry"
{

    fields
    {
        field(1; "Entry No."; Integer) { }
        field(2; "Radio Show No."; Code[20]) { }
        field(3; Type; Option)
        {
            OptionMembers = ,Resource,Show,Item;
        }
        field(4; "No."; Code[20]) { }
        field(5; "Data Format"; Option)
        {
            OptionMembers = ,Vinyl,CD,MP3,PSA,Advertisement;
        }
        field(6; Date; Date) { }
        field(7; Time; Time) { }
        field(8; Duration; Duration) { }
        field(9; "Fee Amount"; Decimal) { }
        field(10; "ACSAP ID"; Integer) { }
        field(11; "Publisher Code"; Code[10]) { }
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