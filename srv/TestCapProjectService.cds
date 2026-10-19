using{sap.cap.TestCapProject as my} from '../db/Schema'; 

service TestCapProjectService
{
  entity TestCapProjectShop as projection on my.TestCapProjectShop 
  actions{
    action createDetails(iddetails: Integer @title: 'ID details', street: String @title: 'Street name');
    action fingerPrint(name: String @title: 'Person Name')
  }; 
  entity TestCapProjectpDetails as projection on my.TestCapProjectpDetails;  

  function myfunction(name: String) returns String;
  Action myaction(name: String) returns String;   
} 