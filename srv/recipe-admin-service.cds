using { com.accenture.recipe_create as db } from '../db/recipe_schema';

service RecipeService {
    entity Recipe   as projection on db.Recipe;
    
}
