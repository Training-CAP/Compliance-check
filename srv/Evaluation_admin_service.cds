using {com.sample.evaluation as evaluation} from '../db/evaluation_schema';

service EvalautionService {
    // enabiling create button
    @sap.creatable:true
    // enabling draft
    @odata.draft.enabled:true
    entity Evaluation as 
        select from evaluation.evaluation{
        key ID            : UUID,
            name          : String,
            brief         : String,
            sellingmarket : String,
            valid_from    : Date,
            valid_to      : Date,
            status        : String


    };

}