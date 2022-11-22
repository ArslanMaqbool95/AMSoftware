page 50126 "Radio Show StrMenu"
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
    var
        Options: Text[50];
        Selected: Integer;
        Text000: Label 'Red,Green,Blue,Yellow,Pink,Orange';
        Text001: Label 'You selected option %1.';
        Text002: Label 'Choose one of the following options:';

    trigger OnOpenPage()
    begin
        Options := Text000;
        Selected := Dialog.StrMenu(Options, 3, Text002);
        Message(Text001, Selected);
    end;
}