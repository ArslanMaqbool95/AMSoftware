page 50117 "Fixed Asset Card "
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Radio Show";

    layout
    {
        area(Content)
        {
            group(General)
            {
                group("Description Book") { }
                part(DepreciationBook; "FA Depreciation Books Subform") { }
            }
            group(Maintenance) { }
        }
        area(FactBoxes)
        {
            part(FixedAssetPicture; "Fixed Asset Picture") { }
        }
    }
}