page 50110 "Lot Avail. by Bin"
{
    PageType = List;
    SourceTable = "Warehouse Entry";
    SourceTableTemporary = true;
    UsageCategory = Lists;
    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Item No."; Rec."Item No.") { ApplicationArea = All; }
                field("Location Code"; Rec."Location Code") { ApplicationArea = all; }
                field("Bin Code"; Rec."Bin Code") { ApplicationArea = All; }
                field("Serial No."; Rec."Serial No.") { ApplicationArea = All; }
                field(Quantity; Rec.Quantity) { ApplicationArea = all; }
            }
        }
    }

    trigger OnOpenPage()
    var
        LotAvail: Query "Lot Avail. by Bin";

    begin
        LotAvail.Open;
        while LotAvail.Read do begin
            Rec.Init;
            Rec."Entry No." := Rec."Entry No." + 1;
            Rec."Item No." := LotAvail.Item_No;
            Rec."Location Code" := LotAvail.Location_Code;
            //"Bin Code" := LotAvail.Bin_Code;
            Rec.Quantity := LotAvail.Sum_Quantity;
            Rec.Insert;
        end;
    end;
}
