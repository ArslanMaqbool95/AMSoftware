table 50110 "Playlist Header"
{
    //DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20]) { }
        field(2; "Radio Show No."; Code[20]) { }
        field(3; Description; Text[50]) { }
        field(4; "Broadcast Date"; Date) { }
        field(5; Duration; Duration) { }
        field(6; "Start Time"; Time) { }
        field(7; "End Time"; Time) { }
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