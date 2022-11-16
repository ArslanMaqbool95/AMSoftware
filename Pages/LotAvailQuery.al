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
                field("Item No."; "Item No.") { ApplicationArea = All; }
                field("Location Code"; "Location Code") { ApplicationArea = all; }
                field("Bin Code"; "Bin Code") { ApplicationArea = All; }
                field("Serial No."; "Serial No.") { ApplicationArea = All; }
                field(Quantity; Quantity) { ApplicationArea = all; }
            }
        }
    }

    trigger OnOpenPage()
    var
        LotAvail: Query "Lot Avail. by Bin";

    begin
        LotAvail.Open;
        while LotAvail.Read do begin
            Init;
            "Entry No." := "Entry No." + 1;
            "Item No." := LotAvail.Item_No;
            "Location Code" := LotAvail.Location_Code;
            //"Bin Code" := LotAvail.Bin_Code;
            Quantity := LotAvail.Sum_Quantity;
            Insert;
        end;
    end;
}
