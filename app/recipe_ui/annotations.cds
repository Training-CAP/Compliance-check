using RecipeService as service from '../../srv/recipe-admin-service';

annotate service.Recipe with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'recipeName',
            Value : recipeName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'recipeDescription',
            Value : recipeDescription,
        },
        {
            $Type : 'UI.DataField',
            Label : 'recipeType',
            Value : recipeType,
        },
        {
            $Type : 'UI.DataField',
            Label : 'valid_To',
            Value : valid_To,
        },
        {
            $Type : 'UI.DataField',
            Label : 'valid_From',
            Value : valid_From,
        },
    ]
);
annotate service.Recipe with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'recipeName',
                Value : recipeName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'recipeDescription',
                Value : recipeDescription,
            },
            {
                $Type : 'UI.DataField',
                Label : 'recipeType',
                Value : recipeType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'valid_To',
                Value : valid_To,
            },
            {
                $Type : 'UI.DataField',
                Label : 'valid_From',
                Value : valid_From,
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
