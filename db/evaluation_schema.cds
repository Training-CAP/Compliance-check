namespace com.sample.evaluation;
using { cuid,managed } from '@sap/cds/common';

entity Evaluation :cuid, managed {
        name          : String;
        brief         : String;
        sellingmarket : String;
        valid_from    : Date;
        valid_to     : Date;
        status        : String;
        purposeItems      : Composition of many PurposeItem
                                             on purposeItems.evaluation = $self;

}
entity PurposeItem : managed {

    key ID            : UUID;
        purpose     : Association to one CompliancePurpose;
        evaluation : Association to one Evaluation;
}
entity CompliancePurpose : managed {

    key ID            : UUID;
        name          : String;
        brief         : String;
        valid_from    : Date;
        valid_to     : Date;
        status        : String;
}
