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
        field(6; "Address"; Text[50]) { }
        field(7; "Address 2"; Text[50]) { }
        field(8; City; Text[50]) { }
        field(9; "Country/Region Code"; Code[50]) { }
        field(10; Country; Text[30]) { }
        field(11; "Post_Code"; Code[20])
        {
            trigger OnValidate()
            var
                PostCode: Record "Post Code";
            begin
                PostCode.ValidatePostCode(City, "Post_Code", Country, "Country/Region Code", (CurrFieldNo <> 0) And GuiAllowed);
            end;
        }
        field(12; Gender; Option)
        {
            OptionMembers = ,Male,Female;
        }
        field(13; "Birth Date"; Date) { }
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