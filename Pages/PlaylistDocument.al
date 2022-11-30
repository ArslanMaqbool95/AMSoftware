page 50138 "Playlist Document"
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = "Playlist Header";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("No."; Rec."No.") { ApplicationArea = All; }
                field(Description; Rec.Description) { ApplicationArea = All; }
                field("Radio Show No."; Rec."Radio Show No.")
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        CurrPage.Update;
                    end;
                }
                field("Start Time"; Rec."Start Time") { ApplicationArea = all; }

                field("End Time"; Rec."End Time") { ApplicationArea = all; }

                field("Broadcast Date"; Rec."Broadcast Date") { ApplicationArea = all; }

                field(Duration; Rec.Duration) { ApplicationArea = all; }

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