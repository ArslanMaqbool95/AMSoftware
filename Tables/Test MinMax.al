table 50121 "Test Min Max"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Test; Decimal)
        {
            //DataClassification = ToBeClassified;
            DecimalPlaces = 0;
            BlankNumbers = DontBlank;
            BlankZero = true;
            SignDisplacement = 1;
            MinValue = 0;
            MaxValue = 10;
            AutoIncrement = true;

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

}