page 50129 "Radio Show Set Get"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Radio Show Number";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("No."; Rec."No.") { ApplicationArea = All; }
                field("Item No."; Rec."Item No.") { }
                field("Name"; Rec."Name") { ApplicationArea = All; }
                field("Run Time"; Rec."Run Time") { ApplicationArea = All; }
                field("Host Name"; Rec."Host Name") { ApplicationArea = All; }
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
            }
        }
    }
    trigger OnOpenPage()
    var
        RadioShowNumber: Record "Radio Show Number";
        Bool: Boolean;
    begin
        // Bool := RadioShowNumber.get("No.", "Item No.");
        Bool := RadioShowNumber.Find("No.")
    end;
}