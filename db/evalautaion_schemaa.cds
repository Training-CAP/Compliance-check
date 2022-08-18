 namespace sap.capire.evaluation;



using { Currency, cuid, managed, sap.common.CodeList } from '@sap/cds/common';



 entity evaluation :  managed {

      key ID  : UUID;

     name   :  String;

    brief   : String;

     sellingmarket  : String;

    Valid_from:Date;

     Valid_to:Date;

     status:String;

 }