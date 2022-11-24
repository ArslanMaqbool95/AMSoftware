table 50132 "Post Codes"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Code; Code[20]) { }
        field(2; City; Text[30]) { }
        field(3; "Search City"; Code[50]) { }
        field(4; "Country/Region Code"; Code[10]) { }
        field(5; Country; Text[30]) { }
        field(6; "Post_Code"; Code[20])
        {
            trigger OnValidate()
            var
                PostCode: Record "Post Code";
            begin
                PostCode.ValidatePostCode(City, "Post_Code", Country, "Country/Region Code", (CurrFieldNo <> 0) And GuiAllowed);
            end;
        }
    }

    keys
    {
        key("Code,City"; Code, City)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

}