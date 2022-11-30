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
        field(8; "Document No."; Code[50]) { }
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
    procedure NWSRequired(Category: Option ,News,Weather,Sports): Integer
    var
        PlaylistLine: Record "Playlist Line";
        RadioShow: Record "Radio Show Table";
        RadioShowType: Record "Radio Show Type";
        Cnt: Integer;
    begin
        PlaylistLine.SetRange("Documents No.", "No.");
        PlaylistLine.SetRange(Type, PlaylistLine.Type::Show);
        if PlaylistLine.FindSet then
            repeat
                RadioShow.get(PlaylistLine."No.");
                RadioShowType.Get(RadioShow."Radio Show Type");
                case Category of
                    Category::News:
                        if RadioShowType.Code = 'News' then
                            Cnt += 1;
                    Category::Weather:
                        if RadioShowType.Code = 'Weather' then
                            Cnt += 1;
                    Category::Sports:
                        if RadioShowType.Code = 'Sports' then
                            Cnt += 1;
                end;
            until playlistLine.next = 0;
    end;

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