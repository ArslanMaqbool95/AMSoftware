table 50106 "Radio Show Type"
{
    LookupPageId = "Radio Show Type";
    DrillDownPageId = "Radio Show Type";

    fields
    {
        field(1; Code; Code[20]) { }
        field(2; Description; Text[50]) { }
    }
    procedure HelperCreateShowType("Code": Code[10]; Descr: Text): Boolean
    var
        RadioShowType: Record "Radio Show Type";

    begin
        RadioShowType.Code := Code;
        RadioShowType.Description := Descr;
        RadioShowType.Insert;
    end;

    // keys
    // {
    //     key(Pk; Code)
    //     {
    //         Clustered = true;
    //     }
    // }

    // var
    //     myInt: Integer;

    // trigger OnInsert()
    // begin

    // end;

    // trigger OnModify()
    // begin

    // end;

    // trigger OnDelete()
    // begin

    // end;

    // trigger OnRename()
    // begin

    // end;

}