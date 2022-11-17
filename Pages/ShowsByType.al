report 50125 "Shows By Type"
{
    WordLayout = './Shows by Type.docx';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = Word;


    dataset
    {
        dataitem(RadioShowType; "Radio Show Type")
        {
            column(UserComment; UserComment) { }
            column(Code_RadioShowType; Code) { IncludeCaption = true; }
            column(Description_RadioShowType; Description) { IncludeCaption = true; }

            dataitem(RadioShow; "Radio Show Number")
            {
                DataItemLink = "Radio Show Type" = field(Code);
                DataItemTableView = sorting("Radio Show Type");
                PrintOnlyIfDetail = true;
                column(No_RadioShow; "No.") { IncludeCaption = true; }
                column(Name_RadioShow; Name) { IncludeCaption = true; }
                column(RunTime_RadioShow; "Run Time") { IncludeCaption = true; }


                dataitem("Playlist Header"; "Playlist Header")
                {
                    DataItemLink = "Radio Show No." = field("No.");
                    DataItemTableView = sorting("No.");
                    column(PostingDate_PlaylistHeader; "Broadcast Date") { IncludeCaption = true; }
                    column(StartTime_PlaylistHeader; "Start Time") { IncludeCaption = true; }
                }

            }

        }

    }
    requestpage { }
    labels
    {
        ReportTitle = 'Show Schedule by Type';
    }

    var
        UserComment: Text;
    // procedure CreateRadioShows()

    // begin
    //     HelperCreateRadioShow('RS001', 'TALK', 'ÇeCe and Friends', 020000T - 000000T, 'CECE', 'CeCe');
    //     HelperCreateRadioShow('RS002', 'MUSIC', 'Alec Rocks and Bobs', 020000T - 000000T, 'ALEC', 'Alec');
    //     HelperCreateRadioShow('RS003', 'CALL-IN', 'Ask Cole', 020000T - 000000T, 'COLE', 'Cole');
    //     HelperCreateRadioShow('RS004', 'CALL-IN', 'What do you think?', 020000T - 000000T, 'WESLEY', 'Wesley');

    // end;
}