table 50106 "Radio Show Type"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Code; Code[20]) { }
        field(2; Description; Text[50]) { }
    }

    keys
    {
        key(Pk; Code)
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