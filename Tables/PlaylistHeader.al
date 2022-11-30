table 50110 "Playlist Header"
{
    //DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20]) { }
        field(2; "Radio Show No."; Code[20])
        {
            trigger OnValidate()
            var
                RadioShow: Record "Radio Show Table";
            begin
                if RadioShow.Get("Radio Show No.") then begin
                    "PSAs Required" := RadioShow."PSAs Required";
                    "Ads Required" := RadioShow."Ads Required";
                    "News Required" := RadioShow."News Required";
                    "Sports Required" := RadioShow."Sports Required";
                    "Weather Required" := RadioShow."Weather Required";
                end
                else begin
                    "PSAs Required" := false;
                    "Ads Required" := false;
                    "News Required" := false;
                    "Sports Required" := false;
                    "Weather Required" := false;
                end;
            end;
        }
        field(3; Description; Text[50]) { }
        field(4; "Broadcast Date"; Date) { }
        field(5; Duration; Duration) { }
        field(6; "Start Time"; Time)
        {
            trigger OnValidate()
            var
                RadioShow: Record "Radio Show Table";
            begin
                RadioShow.Get("Radio Show No.");
                "End Time" := "Start Time" + RadioShow."Run Time";
            end;
        }
        field(7; "End Time"; Time) { }
        field(21; "PSAs Required"; Boolean) { }
        field(22; "PSA Count"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Playlist Line" where
            ("No." = field("No."), Type = const(Item), "Data Format" = const(PSA)));
            Editable = false;
        }
        field(23; "Ads Required"; Boolean) { }
        field(24; "Ads Count"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Playlist Line" where
            ("No." = field("No."), Type = const(Item), "Data Format" = const(Advertisement)));
            Editable = false;
        }
        field(14; "News Required"; Boolean) { }
        field(18; "Weather Required"; Boolean) { }
        field(16; "Sports Required"; Boolean) { }
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