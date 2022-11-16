page 50101 "List Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Playlist Item Rate Test";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {

                field("No."; Rec."No.") { ApplicationArea = All; }
                field("Radio Show Type"; Rec."Radio Show Type") { ApplicationArea = All; }
                field("Name"; Rec.Name)
                {
                    ApplicationArea = All;
                    Editable = true;
                    Caption = 'Weekly Report';
                    ToolTip = 'Radio Project';
                    MultiLine = false;
                }
                field("Run Time"; Rec."Run Time") { ApplicationArea = All; }
                field("Host Code"; Rec."Host Code") { ApplicationArea = All; }
                field("Host Name"; Rec."Host Name") { ApplicationArea = All; }
                field("Average Listeners"; Rec."Average Listners")
                {
                    ApplicationArea = All;
                    Visible = false;
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