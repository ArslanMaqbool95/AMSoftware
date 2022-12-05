xmlport 50142 "Ratings Import"
{
    UseDefaultNamespace = true;
    FormatEvaluate = Xml;
    DefaultNamespace = 'urn:Microsoft dynamics nav/xmlports/RatingImport';
    Direction = Both;

    schema
    {
        textelement(Root)
        {
            MaxOccurs = Once;

            tableelement(ListernshipEntries; "Listnership Entry")
            {
                MinOccurs = Zero;
                XmlName = 'RatingsData';
                fieldelement(EntryNo; ListernshipEntries."Entry No.") { }
                fieldelement(Date; ListernshipEntries.Date) { }
                fieldelement(StartTime; ListernshipEntries."Start Time") { }
                fieldelement(EndTime; ListernshipEntries."End Time") { }
                fieldelement(RadioShowID; ListernshipEntries."Radio Show No.") { }
                fieldelement(Listeners; ListernshipEntries."Listerner Count") { }
                fieldelement(Audience; ListernshipEntries."Audience Share") { }
                fieldelement(Age; ListernshipEntries."Age Demographic") { }
            }
        }
    }

    // requestpage
    // {
    //     layout
    //     {
    //         area(content)
    //         {
    //             group(GroupName)
    //             {
    //                 field(Name; SourceExpression)
    //                 {

    //                 }
    //             }
    //         }
    //     }

    //     actions
    //     {
    //         area(processing)
    //         {
    //             action(ActionName)
    //             {

    //             }
    //         }
    //     }
    // }


    var
        myInt: Integer;
}
