using {com.sample.recipe as recipe} from '../db/recipe_schema';

service RecipeService {
    // enabiling create button
    @sap.creatable:true
    // enabling draft
    @odata.draft.enabled:true
    entity Recipe as
        select from recipe.Recipe {
            key ID,
                recipeName,
                recipeDescription,
                recipeType,
                valid_To,
                valid_From,
                status,
                ingredientItems  :  redirected to IngredientItem
        };
    entity IngredientItem as
        select from recipe.IngredientItem {
            key ID,
                minQty,
                maxQty,
                actualQty,
                ingredient  :  redirected to Ingredient,
                recipe      :  redirected to Recipe
        };

    entity Ingredient as
        select from recipe.Ingredient {
            ID,
            name,
            brief
        };
        
}
