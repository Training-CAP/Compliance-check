namespace com.sample.evaluation;
using { managed } from '@sap/cds/common';

entity evaluation : managed {

    key ID            : UUID;
        name          : String;
        brief         : String;
        sellingmarket : String;
        valid_from    : Date;
        valid_to     : Date;
        status        : String;

}
