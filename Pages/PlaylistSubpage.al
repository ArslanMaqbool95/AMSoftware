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
                field("No."; Rec."No.") { ApplicationArea = All; }
                field("Document No."; Rec."Documents No.") { }
                field("Data Format"; Rec."Data Format") { ApplicationArea = all; }
                field(Description; Rec.Description) { ApplicationArea = All; }
                field(Duration; Rec.Duration) { ApplicationArea = all; }
                field("Start Time"; Rec."Start Time") { ApplicationArea = all; }
                field("End Time"; Rec."End Time") { ApplicationArea = all; }
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