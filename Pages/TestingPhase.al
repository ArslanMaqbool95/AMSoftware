page 50140 "Radio Show Test"
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
    // var
    //     x, y : Integer;
    //     a, b : Integer;
    // trigger OnOpenPage()
    // begin
    //     if (x = y) and (a = b) then begin
    //         x := a;
    //         y := b;
    //     end;
    // end;

    var
        // A,B,C : Integer;
        A: Integer;
        B: Integer;
        C: Integer;
        Count1: Integer;
        Count2: Integer;

    trigger OnOpenPage()
    begin
        if (A <> B) then
            A := A + Count1
        else
            B := B + Count2;
    end;

    // trigger OnOpenPage()
    // begin
    //     if (A <> B) then begin
    //         A := A + Count1;
    //         B := B + Count1;
    //         if (C > (A * B)) then
    //             C := A * B;
    //     end
    //     else
    //         B := B + Count2;
    // end;
}