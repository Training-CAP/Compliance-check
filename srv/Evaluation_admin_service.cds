using {com.sample.evaluation as evaluation} from '../db/evaluation_schema';

service EvaluationService {
    // enabiling create button
    @sap.creatable:true
    // enabling draft
    @odata.draft.enabled:true
    entity Evaluation as 
        select from evaluation.Evaluation{
            key ID,
            name,
            brief,
            sellingmarket,
            valid_from,
            valid_to,
            status,
            purposeItems  :  redirected to PurposeItem
    };
    entity PurposeItem as 
        select from evaluation.PurposeItem{
            key ID,
            evaluation : redirected to Evaluation,
            purpose :  redirected to CompliancePurpose
    };
      entity CompliancePurpose as 
        select from evaluation.CompliancePurpose{
            key ID,
            name,
            brief,
            valid_from,
            valid_to,
            status
    };

}
