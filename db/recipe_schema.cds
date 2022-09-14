namespace com.sample.recipe;

using {cuid,managed} from '@sap/cds/common';

entity Recipe : cuid,managed {
    recipeName : String;
    recipeDescription : String;
    recipeType: String;
    valid_To : Date;
    valid_From : Date;
    status : String;
    ingredientItems      : Composition of many IngredientItem
                                             on ingredientItems.recipe = $self;
}
entity IngredientItem : managed {
        key ID            : UUID;
        ingredient     : Association to one Ingredient;
        recipe : Association to one Recipe;
        minQty : String;
        maxQty : String;
        actualQty : String;
}
entity Ingredient : managed {    
        key ID            : UUID;
        name          : String;
        brief         : String;


}


