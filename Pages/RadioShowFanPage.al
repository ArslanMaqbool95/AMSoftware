page 50120 RadioShowNumberFanFactBox
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Radio Show Fan";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;

                }

                field(Email; Rec.Email)
                {
                    ApplicationArea = All;

                }

                field("Last Contacted"; Rec."Last Contacted")
                {
                    ApplicationArea = All;

                }
            }
        }
    }




}