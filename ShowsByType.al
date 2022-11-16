report 50105 "Shows By Type"
{
    WordLayout = './Shows by Type.docx';
    UsageCategory = ReportsAndAnalysis;
    // ApplicationArea = All;
    // DefaultRenderingLayout = LayoutName;

    dataset
    {
        dataitem(RadioShowType; "Radio Show Type")
        {
            //column(UserComment; UserComment){}
            column(Code_RadioShowType; Code) { IncludeCaption = true; }
            column(Description_RadioShowType; Description) { IncludeCaption = true; }
            dataitem(RadioShow; "Radio Show Number")
            {
                column(No_RadioShow; "No.") { IncludeCaption = true; }
                column(Name_RadioShow; Name) { IncludeCaption = true; }
                column(RunTime_RadioShow; "Run Time") { IncludeCaption = true; }
                dataitem("Playlist Header"; "Playlist Header")
                {
                    column(PostingDate_PlaylistHeader; "Broadcast Date") { IncludeCaption = true; }
                    column(StartTime_PlaylistHeader; "Start Time") { IncludeCaption = true; }
                }
            }
        }
    }

}