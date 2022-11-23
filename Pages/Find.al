page 50130 "Radio Show Set Find"
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

    var
        RadioShowNumber: Record "Radio Show Number";
        Question: Text;
        Answer: Boolean;
        CustomerNo: Integer;
        Text000: Label 'You Select this  %1?';
        Text001: Label 'How may i help you ?';

    trigger OnOpenPage()
    begin
        CustomerNo := 01121212;
        Question := Text001;
        Answer := Dialog.Confirm(Question, true, CustomerNo);
        Message(Text000, Answer);
    end;

}
