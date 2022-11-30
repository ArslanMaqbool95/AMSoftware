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
            group(Group)
            {
                field("No."; Rec."No.") { ApplicationArea = All; }
                field(Description; Rec.Description) { ApplicationArea = All; }
                field("Document No."; Rec."Document No.") { }
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
            part(line; "Playlist Subpage")
            {
                SubPageLink = "Documents No." = field("No.");
                SubPageView = sorting("Documents No.", "Line No.");
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