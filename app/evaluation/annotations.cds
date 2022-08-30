using evalautionService as service from '../../srv/evaluation_adminservice';

annotate service.evaluation with @(
    UI.LineItem : [
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
    ]
);
annotate service.evaluation with @(
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
    ]
);

