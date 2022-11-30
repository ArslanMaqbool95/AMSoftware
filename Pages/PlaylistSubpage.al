page 50139 "Playlist Subpage"
{
    PageType = ListPart;
    SourceTable = "Playlist Line";
    AutoSplitKey = true;
    DelayedInsert = true;



    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Type; Type) { ApplicationArea = all; }
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        Res: Record Resource;
                        Item: Record Item;
                        RadioShow: Record "Radio Show Table";
                    begin
                        case Type of
                            Type::Resource:
                                begin
                                    Res.Get(Rec."No.");
                                    Description := Res.Name;
                                end;
                            Type::Item:
                                begin
                                    Item.Get(Rec."No.");
                                    Description := Item.Description;
                                    "Data Format" := Item."Data Format";
                                    Duration := Item.Duration;
                                end;
                            Type::Show:
                                begin
                                    RadioShow.get(Rec."No.");
                                    Description := RadioShow.Name;
                                end;
                        end;
                    end;
                }
                field("Document No."; Rec."Documents No.") { }
                field("Data Format"; Rec."Data Format") { ApplicationArea = all; }
                field(Description; Rec.Description) { ApplicationArea = All; }
                field(Duration; Rec.Duration) { ApplicationArea = all; }
                field("Start Time"; Rec."Start Time")
                {
                    ApplicationArea = all;
                    trigger OnValidate()
                    begin
                        if Duration <> 0 then
                            "End Time" := "Start Time" + Duration;
                    end;
                }
                field("End Time"; Rec."End Time")
                {
                    ApplicationArea = all;
                    trigger OnValidate()
                    begin
                        if "Start Time" <> 0T then
                            Duration := "End Time" - "Start Time";
                    end;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}