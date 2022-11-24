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
            var
                CountryRegion: Record "Country/Region";
                CountryName: Text;
            begin
                CountryRegion.Get("Country/Region Code");
                CountryName := CountryRegion.Name;
            end;

        }
    }
}