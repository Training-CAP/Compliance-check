DROP VIEW IF EXISTS RecipeService_Recipe;

DROP TABLE IF EXISTS evalautionService_evaluation;
DROP TABLE IF EXISTS com_accenture_recipe_create_Recipe;
DROP TABLE IF EXISTS sap_capire_evaluation_evaluation;

CREATE TABLE sap_capire_evaluation_evaluation (
  createdAt TIMESTAMP,
  createdBy NVARCHAR(255),
  modifiedAt TIMESTAMP,
  modifiedBy NVARCHAR(255),
  ID NVARCHAR(36) NOT NULL,
  name NVARCHAR(5000),
  brief NVARCHAR(5000),
  sellingmarket NVARCHAR(5000),
  Valid_from DATE,
  Valid_to DATE,
  status NVARCHAR(5000),
  PRIMARY KEY(ID)
);

CREATE TABLE com_accenture_recipe_create_Recipe (
  createdAt TIMESTAMP,
  createdBy NVARCHAR(255),
  modifiedAt TIMESTAMP,
  modifiedBy NVARCHAR(255),
  recipeId NVARCHAR(36) NOT NULL,
  recipeName NVARCHAR(5000),
  recipeDescription NVARCHAR(5000),
  recipeType NVARCHAR(5000),
  valid_To DATE,
  valid_From DATE,
  status NVARCHAR(5000),
  PRIMARY KEY(recipeId)
);

CREATE TABLE evalautionService_evaluation (
  ID NVARCHAR(36) NOT NULL,
  name NVARCHAR(5000),
  brief NVARCHAR(5000),
  sellingmarket NVARCHAR(5000),
  valid_from DATE,
  valid_to DATE,
  status NVARCHAR(5000),
  PRIMARY KEY(ID)
);

CREATE VIEW RecipeService_Recipe AS SELECT
  Recipe_0.createdAt,
  Recipe_0.createdBy,
  Recipe_0.modifiedAt,
  Recipe_0.modifiedBy,
  Recipe_0.recipeId,
  Recipe_0.recipeName,
  Recipe_0.recipeDescription,
  Recipe_0.recipeType,
  Recipe_0.valid_To,
  Recipe_0.valid_From,
  Recipe_0.status
FROM com_accenture_recipe_create_Recipe AS Recipe_0;

