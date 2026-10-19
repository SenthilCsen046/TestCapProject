namespace sap.cap.TestCapProject;

using { cuid } from '@sap/cds/common';

aspect Area
{
    Street : String;
    Pincode : Integer;
}

entity TestCapProjectShop : cuid, Area
{
    Name : String;
    Address : String;
    Category : Integer;
    Quality : Decimal(9,4);
    testCapProjectpDetail : Association to one TestCapProjectpDetails;
}

entity TestCapProjectpDetails
{
    key ID : Integer;
    Order : String(100);
    Item : String(100);
    Price : Decimal(9,0);
    testCapProjectShops : Association to many TestCapProjectShop on testCapProjectShops.testCapProjectpDetail = $self;
}
