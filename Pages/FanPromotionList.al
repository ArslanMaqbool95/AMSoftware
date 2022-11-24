report 50136 "Fan Promotion List"
{
    DefaultLayout = Word;
    WordLayout = './FanPromotionList.docx';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = Basic;



    dataset
    {
        dataitem(DataItemName; "Radio Show Fan")
        {
            column(Name; Name) { }
            column(Address; Address) { }
            column(Address_2; "Address 2") { }
            column(City; City) { }
            column(Post_Code; Post_Code) { }
            column(Country_Region_Code; "Country/Region Code") { }
            trigger OnAfterGetRecord()
            // var
            //     CountryRegion: Record "Country/Region";
            //     CountryName: Text;
            //     Age12orLess: Boolean;
            //     Age13to18: Boolean;
            //     Age19to34: Boolean;
            //     Age35to50: Boolean;
            //     AgeOver50: Boolean;
            //     Male, Female : Boolean;
            //     SelectThisFan: Boolean;
            //     FanAge: Integer;
            begin
                CountryRegion.Get("Country/Region Code");
                CountryName := CountryRegion.Name;

                FanAge := Round(((WorkDate - "Birth Date") / 365), 1.0, '<');

                SelectThisFan := false;
                if Age12orLess AND (FanAge <= 12) then
                    SelectThisFan := True;
            end;

        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(Options)
                {
                    field(Age12orLess; Age12orLess)
                    {
                        ApplicationArea = all;
                        Caption = 'Age 12 or less';
                    }
                    field(Age13to18; Age13to18)
                    {
                        ApplicationArea = all;
                        Caption = 'Age 13 to 18';
                    }
                    field(Age19to34; Age19to34)
                    {
                        ApplicationArea = all;
                        Caption = 'Age 19 to 34';
                    }
                    field(Age35to50; Age35to50)
                    {
                        ApplicationArea = all;
                        Caption = 'Age 35 to 50';
                    }
                    field(AgeOver50; AgeOver50)
                    {
                        ApplicationArea = all;
                        Caption = 'Age over to 50';
                    }
                    field(Male; Male)
                    {
                        ApplicationArea = all;
                        Caption = 'Male';
                    }
                    field(Female; Female)
                    {
                        ApplicationArea = all;
                        Caption = 'Female';
                    }
                }
            }
        }
    }
    var
        CountryRegion: Record "Country/Region";
        CountryName: Text;
        Age12orLess: Boolean;
        Age13to18: Boolean;
        Age19to34: Boolean;
        Age35to50: Boolean;
        AgeOver50: Boolean;
        Male, Female : Boolean;
        SelectThisFan: Boolean;
        FanAge: Integer;
}