table 50111 "Playlist Line"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Documents No."; Code[20]) { }
        field(2; "Line No."; Integer) { }
        field(3; Type; Option)
        {
            OptionMembers = ,Resource,Show,Item;
        }
        field(4; "No."; Code[20]) { }
        field(5; "Data Format"; Option)
        {
            OptionMembers = ,Vinyl,CD,MP3,PSA,Advertisement;
        }
        field(6; "Publisher"; Code[10]) { }
        field(7; Description; Text[50]) { }
        field(8; Duration; Duration) { }
        field(9; "Start Time"; Time) { }
        field(10; "End Time"; Time) { }
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