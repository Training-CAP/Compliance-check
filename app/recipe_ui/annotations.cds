using RecipeService as service from '../../srv/Recipe_admin_service';

annotate service.Recipe with @(
      // annotation for filters in list report filter bar
    UI.SelectionFields :[recipeName,recipeType,valid_From,valid_To],
      // annotation for list report table
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : recipeName
        },
        {
            $Type : 'UI.DataField',
            Value : recipeDescription
        },
        {
            $Type : 'UI.DataField',
            Value : recipeType
        },
        {
            $Type : 'UI.DataField',
            Value : valid_To
        },
        {
            $Type : 'UI.DataField',
            Value : valid_From
        },
    ]
);
annotate service.Recipe with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : recipeName,
            },
            {
                $Type : 'UI.DataField',
                Value : recipeDescription,
            },
            {
                $Type : 'UI.DataField',
                Value : recipeType,
            },
            {
                $Type : 'UI.DataField',
                Value : valid_To,
            },
            {
                $Type : 'UI.DataField',
                Value : valid_From,
            },
            {
                $Type : 'UI.DataField',    
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
)
{
    // annotations for each field in the entity
   recipeId
   @Common.Label:'id'
   @UI.Hidden : true
   @UI.HiddenFilter : true;
   recipeName
   @Common.Label:'Name';
   brief
   @Common.Label:'Description';
   recipeType
   @Common.Label:'Type';
   valid_To
   @Common.Label:'Valid To';
   valid_From
   @Common.Label:'Valid From';
   status 
   @Common.Label:'Status';
};
