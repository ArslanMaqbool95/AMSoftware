query 50106 "Lot Avail. by Bin"
{
    QueryType = Normal;
    // APIPublisher = 'PublisherName';
    // APIGroup = 'GroupName';
    // APIVersion = 'VersionList';
    // EntityName = 'EntityName';
    // EntitySetName = 'EntitySetName';

    elements
    {
        dataitem(Item_Ledger_Entry; "Item Ledger Entry")
        {
            column(Item_No; "Item No.") { }
            column(Lot_No; "Lot No.") { }
            //filter(FilterName; SourceFieldName){}
            dataitem(Warehouse_Entry; "Warehouse Entry")
            {
                DataItemLink = "Location Code" = Item_Ledger_Entry."Location Code",
                "Item No." = Item_Ledger_Entry."Item No.",
                "Lot No." = Item_Ledger_Entry."Lot No.";
                column(Entry_No_; "Entry No.") { }
                column(Location_Code; "Location Code") { }
                column(Sum_Quantity; Quantity)
                {
                    Method = Sum;
                }
            }
            // dataitem(Bin; Bin)
            // {
            //     DataItemLink = Code = Bin.Code;
            //     DataItemTableFilter = Pick = CONST(true);
            // }
        }
    }

    var
        myInt: Integer;

    trigger OnBeforeOpen()
    begin

    end;
}