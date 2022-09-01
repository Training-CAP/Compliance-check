using {com.sample.recipe as recipe} from '../db/recipe_schema';

service RecipeService {
    // enabiling create button
    @sap.creatable:true
    // enabling draft
    @odata.draft.enabled:true
    entity Recipe as
        select from recipe.Recipe {
            key recipeId          : UUID,
                recipeName        : String,
                recipeDescription : String,
                recipeType        : String,
                valid_To          : Date,
                valid_From        : Date,
                status            : String


        };

}
