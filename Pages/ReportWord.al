report 50104 "Radio Shows"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    WordLayout = 'RadioShows.docx';
    //RDLCLayout = 'RadioShows.RDLC';
    DefaultLayout = Word;

    dataset
    {
        dataitem(DataItemName; "Radio Show Number")
        {
            column("NO"; "No.") { }
            column("RadioShowType"; "Radio Show Type") { }
            column("Name"; "Name") { }
            column("RunTime"; "Run Time") { }
            column("HostCode"; "Host Code") { }
            column("HostName"; "Host Name") { }
            column("AverageListeners"; "Average Listners") { }
            column("AudienceShare"; "Audience Share") { }
            column("AdvertisementRevenue"; "Advertising Revenue") { }
            column("RoyaltyCost"; "Royalty Cost") { }

        }
    }

    var
        myInt: Integer;
}