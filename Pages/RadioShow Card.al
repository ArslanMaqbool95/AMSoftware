page 50103 "Radio Show Card"
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
                field("Radio Show Type"; Rec."Radio Show Type") { ApplicationArea = All; }
                field("Name"; Rec."Name") { ApplicationArea = All; }
                field("Run Time"; Rec."Run Time") { ApplicationArea = All; }
                field("Host Code"; Rec."Host Code") { ApplicationArea = All; }
                field("Host Name"; Rec."Host Name") { ApplicationArea = All; }
                field("Average Listeners"; Rec."Average Listners") { ApplicationArea = All; }
                field("Audience Share"; Rec."Audience Share") { ApplicationArea = All; }
                field("Advertising Revenue"; Rec."Advertising Revenue") { ApplicationArea = All; }
                field("Royalty Cost"; Rec."Royalty Cost") { ApplicationArea = All; }
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

    begin
        //hel := 'Testing Phase';
        // Message('I am Debugger %1', hel);
        err := 'Error checking....';
        Error('Loop %1', err);
    end;


    var
        err: TEXT;
    //hel: Text;
}