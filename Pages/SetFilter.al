page 50128 "Radio Show Set Filter"
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

                trigger OnAction()
                begin

                end;
            }
        }
    }
    trigger OnOpenPage()
    var
        RadioShowNumber: Record "Radio Show Number";
    begin
        RadioShowNumber.Setfilter("Item No.", '%2', '1300', '1400');
    end;
}