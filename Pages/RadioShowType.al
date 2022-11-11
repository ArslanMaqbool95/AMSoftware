page 50106 "Radio Show Type"
{
    PageType = List;
    ApplicationArea = Basic;
    UsageCategory = Administration;
    SourceTable = "Radio Show Type";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Code; Rec.Code)
                {
                    ApplicationArea = Basic;

                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = Basic;

                }
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
        myInt: Integer;
}