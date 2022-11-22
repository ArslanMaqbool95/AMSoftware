page 50127 "Radio Show Set Range"
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
        MyFieldRef: FieldRef;
        CustomerRecref: RecordRef;
        //"var": Integer;
        LowVal: Integer;
        Text000: Label '%1 records were retrieved.';

    trigger OnOpenPage()
    begin
        CustomerRecref.Open(Database::Customer);
        MyFieldRef := CustomerRecref.Field(1);
        MyFieldRef.SetRange('2', '40');
        // "var" := 0;
        if CustomerRecref.Find('-') then
            repeat
                LowVal := LowVal + 1;
            //"var" := "var" + 1;
            until CustomerRecref.Next = 0;
        Message(Text000, LowVal);
    end;
}