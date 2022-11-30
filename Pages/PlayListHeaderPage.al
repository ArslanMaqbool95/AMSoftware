page 50137 "PlayListHeaderPage"
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = "PlayList Header";

    layout
    {
        area(Content)
        {

            group(Group)
            {
                field("No."; Rec."No.") { ApplicationArea = all; }

                field(Description; Rec."Description") { ApplicationArea = all; }

                field("Radio show No."; Rec."Radio Show No.")
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        CurrPage.Update;
                    end;
                }

                field("Start Time"; Rec."Start Time") { }

                field("End Time"; Rec."End Time") { ApplicationArea = all; }

                field("Broadcast Date"; Rec."Broadcast Date") { ApplicationArea = all; }

                field(Duration; Rec.Duration) { ApplicationArea = all; }





            }

            // part(line; PlayListLineSubpage)
            // {
            //     SubPageLink = "Document No." = field("No.");
            //     SubPageView = sorting("Document No.", "Line No.");


            // }
        }

        // area(FactBoxes)
        // {
        //     part(factbox; "Playlist Factbox")
        //     {
        //         SubPageLink = "No." = field("No.");
        //     }
        // }
    }

}