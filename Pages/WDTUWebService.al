codeunit 50101 "WDTU Web Service"
{
    procedure ImportRating(RatingsXML: XmlPort "Ratings Import"): Text
    begin
        RatingsXML.Import();
        exit('<Root><Station Frequency="91.5">WDTU<Station></Root>');
    end;
    // trigger OnRun()
    // begin

    // end;

    var
        myInt: Integer;
}