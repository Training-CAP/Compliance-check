using EvaluationService as service from '../../srv/Evaluation_admin_service';

annotate service.Evaluation with @(
    // annotation for filters in list report filter bar
    UI.SelectionFields: [name,sellingmarket,valid_from,valid_to],
     // annotation for list report table
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : name
        },
        {
            $Type : 'UI.DataField',
            Value : brief
        },
        {
            $Type : 'UI.DataField',
            Value : sellingmarket
        },
        {
            $Type : 'UI.DataField',
            Value : valid_from
        },
        {
            $Type : 'UI.DataField',
            Value : valid_to
        }
    ]
);
annotate service.Evaluation with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'brief',
                Value : brief,
            },
            {
                $Type : 'UI.DataField',
                Label : 'sellingmarket',
                Value : sellingmarket,
            },
            {
                $Type : 'UI.DataField',
                Label : 'valid_from',
                Value : valid_from,
            },
            {
                $Type : 'UI.DataField',
                Label : 'valid_to',
                Value : valid_to,
            },
            {
                $Type : 'UI.DataField',
                Label : 'status',
                Value : status,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'Purpose',
            Label : 'Purposes',
            Target : 'purposeItems/@UI.LineItem',
        }
    ]
)
{
// annotations for each field in the entity
   ID
   @Common.Label:'id'
   @UI.Hidden : true
   @UI.HiddenFilter : true;
   name
   @Common.Label:'Name';
   brief
   @Common.Label:'Description';
   sellingmarket
   @Common.Label:'Selling Market';
   valid_to
   @Common.Label:'Valid To';
   valid_from
   @Common.Label:'Valid From';
   status 
   @Common.Label:'Status';
};
annotate service.PurposeItem with @(
     UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : purpose.name,
        },
         {
            $Type : 'UI.DataField',
            Value : purpose.brief,
        },
         {
            $Type : 'UI.DataField',
            Value : purpose.valid_from,
        },
        {
            $Type : 'UI.DataField',
            Value : purpose.valid_to
        }
     ]
);
annotate service.CompliancePurpose{
    ID
    @UI.Hidden:true;
    name
    @Common.Label:'Name';
    brief
    @Common.Label:'Description';
    valid_from
    @Common.Label:'Valid From';
    valid_to
    @Common.Label:'Valid To';
    status
    @UI.Hidden:true;
};
