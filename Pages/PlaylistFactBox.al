page 50141 "Playlist Factbox"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Playlist Header";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("PSAs Required"; "PSAs Required") { ApplicationArea = All; }
                field("PSA Count"; "PSA Count") { ApplicationArea = All; }
                field("Ads Required"; "Ads Required") { ApplicationArea = all; }
                field("Ads Count"; "Ads Count") { ApplicationArea = all; }
                field("News Required"; "News Required") { ApplicationArea = all; }
                field("Weather Required"; "Weather Required") { ApplicationArea = all; }
                field("Sports Required"; "Sports Required") { ApplicationArea = all; }
                field(NewsCount; NWSRequired(1)) { ApplicationArea = all; }
                field(WeatherCount; NWSRequired(2)) { ApplicationArea = all; }
                field(SportsCount; NWSRequired(3)) { ApplicationArea = all; }
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