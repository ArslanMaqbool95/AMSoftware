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

    procedure HelpCreateShowType("Code": Code[10]; Descr: Text): Boolean
    var
        RadioShowType: Array[3, 99] of Record "Radio Show Type";
    begin
        RadioShowType[1, 1].Code := Code;
        RadioShowType[1, 1].Description := Descr;
        RadioShowType[1, 1].Insert();

    end;

    // procedure CalculateNewDate(DateFormulaToTest: DateFormula; ReferenceForDateCalc: Date): Date
    // begin
    //     exit(CalcDate(DateFormulaToTest, ReferenceForDateCalc));

    // end;
    // local procedure CalculateNewDate()
    // var
    //     DateFormMgt: Codeunit "Date Formula Mgt.";
    //     begin
    //         "Date Result" := CalcDate("Date Formula to Test","Reference for Date Calculation");
    //     end;

    procedure CreateRadioShows()

    begin
        //     HelperCreateRadioShow('RS001', 'TALK', 'ÇeCe and Friends', 020000T - 000000T, 'CECE', 'CeCe');
        //     HelperCreateRadioShow('RS002', 'MUSIC', 'Alec Rocks and Bobs', 020000T - 000000T, 'ALEC', 'Alec');
        //     HelperCreateRadioShow('RS003', 'CALL-IN', 'Ask Cole', 020000T - 000000T, 'COLE', 'Cole');
        //     HelperCreateRadioShow('RS004', 'CALL-IN', 'What do you think?', 020000T - 000000T, 'WESLEY', 'Wesley');

    end;
}