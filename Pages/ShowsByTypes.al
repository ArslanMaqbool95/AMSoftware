
report 50125 "Shows By Type"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = all;
    WordLayout = './Shows by Type.docx';
    DefaultLayout = Word;

    dataset
    {
        dataitem(RadioShowType; "Radio Show Type")
        {
            column(UserComment; UserComment) { }

            column(Code_RadioShowType; Code) { IncludeCaption = true; }

            column(Description_RadioShowType; Description) { IncludeCaption = true; }

            dataitem("Radio Show"; "Radio Show Number")
            {
                DataItemLink = "Radio Show Type" = FIELD(Code);

                DataItemTableView = SORTING("Radio Show Type");

                PrintOnlyIfDetail = true;

                column(No_RadioShow; "No.") { IncludeCaption = true; }

                column(Name_RadioShow; Name) { IncludeCaption = true; }

                column(RunTime_RadioShow; "Run Time") { IncludeCaption = true; }

                dataitem(PlayListHeader; "Playlist Header")
                {
                    DataItemLink = "Radio Show No." = FIELD("No.");
                    DataItemTableView = SORTING("No.");
                    column(PostingDate_playlistheader; "Broadcast Date") { IncludeCaption = true; }

                    column(StartTime_PlaylistHeader; "Start Time") { IncludeCaption = true; }


                }
            }
        }

    }


    requestpage
    {


        layout
        {
            area(content)
            {
                group(Options)
                {
                    field(UserComment; UserComment)
                    {
                        ApplicationArea = Basic;
                        Caption = 'User Comment';
                    }
                }
            }
        }

    }

    labels
    {
        ReportTitle = 'Show Schedule by Type';
    }





    var
        UserComment: Text;












}