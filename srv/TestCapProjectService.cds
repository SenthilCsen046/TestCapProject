using { sap.cap.TestCapProject as my } from '../db/Schema';

service TestCapProjectService
{
    @odata.draft.enabled
    entity TestCapProjectShop as
        projection on my.TestCapProjectShop
        actions
        {
            action createDetails
            (
                @title : 'ID details'
                iddetails : Integer,
                @title : 'Street name'
                street : String
            );

            action fingerPrint
            (
                @title : 'Person Name'
                name : String
            );
        };

    entity TestCapProjectpDetails as
        projection on my.TestCapProjectpDetails;

    function myfunction
    (
        name : String
    )
    returns String;

    action myaction
    (
        name : String
    )
    returns String;
}
