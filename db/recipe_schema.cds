namespace com.accenture.recipe_create;

using {managed} from '@sap/cds/common';

entity Recipe : managed {
    key recipeId : UUID;
    recipeName : String;
    recipeDescription : String;
    recipeType: String;
    valid_To : Date;
    valid_From : Date;
    status : String;
}


