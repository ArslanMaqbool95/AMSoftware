page 50132 "Radio Show Set Next"
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

    trigger OnOpenPage()
    begin
        if RadioShowNumber.findset then
            repeat
            // Processing logic here
            until RadioShowNumber.next = 0;
    end;

    // trigger OnOpenPage()
    // begin
    //     if (Rec.FindSet) then
    //         repeat
    //         // process record  
    //         until (Rec.Next = 0);
    // end;


}