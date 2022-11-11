table 50120 "Test File"
{
    //DataClassification = ToBeClassified;

    fields
    {
        field(1; Test; Code[30])
        {
            //DataClassification = ToBeClassified; 
            InitValue = 'Arslan';
            CaptionClass = '1,1';
            Editable = true;
            NotBlank = true;
            Numeric = true;
            CharAllowed = '';
            DateFormula = false;
            ValuesAllowed = '';
            SqlDataType = Varchar;
            TableRelation = Customer;
            ExtendedDatatype = Masked;
        }
    }

    keys
    {
        key(Key1; "Test")
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