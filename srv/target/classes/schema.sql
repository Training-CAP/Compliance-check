DROP VIEW IF EXISTS localized_fr_sap_common_Currencies;
DROP VIEW IF EXISTS localized_de_sap_common_Currencies;
DROP VIEW IF EXISTS localized_fr_sap_capire_products_Categories;
DROP VIEW IF EXISTS localized_de_sap_capire_products_Categories;
DROP VIEW IF EXISTS localized_fr_sap_capire_products_Products;
DROP VIEW IF EXISTS localized_de_sap_capire_products_Products;
DROP VIEW IF EXISTS localized_sap_common_Currencies;
DROP VIEW IF EXISTS localized_sap_capire_products_Categories;
DROP VIEW IF EXISTS localized_sap_capire_products_Products;

DROP TABLE IF EXISTS sap_common_Currencies_texts;
DROP TABLE IF EXISTS sap_capire_products_Categories_texts;
DROP TABLE IF EXISTS sap_capire_products_Products_texts;
DROP TABLE IF EXISTS sap_common_Currencies;
DROP TABLE IF EXISTS evaluationService_evaluation;
DROP TABLE IF EXISTS sap_capire_products_Categories;
DROP TABLE IF EXISTS sap_capire_products_Products;
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

CREATE TABLE sap_capire_products_Products (
  ID NVARCHAR(36) NOT NULL,
  createdAt TIMESTAMP,
  createdBy NVARCHAR(255),
  modifiedAt TIMESTAMP,
  modifiedBy NVARCHAR(255),
  title NVARCHAR(111),
  descr NVARCHAR(1111),
  stock INTEGER,
  price DECIMAL(9, 2),
  currency_code NVARCHAR(3),
  category_ID INTEGER,
  PRIMARY KEY(ID)
);

CREATE TABLE sap_capire_products_Categories (
  name NVARCHAR(255),
  descr NVARCHAR(1000),
  ID INTEGER NOT NULL,
  parent_ID INTEGER,
  PRIMARY KEY(ID)
);

CREATE TABLE evaluationService_evaluation (
  ID NVARCHAR(36) NOT NULL,
  name NVARCHAR(5000),
  brief NVARCHAR(5000),
  sellingmarket NVARCHAR(5000),
  valid_from DATE,
  valid_to DATE,
  PRIMARY KEY(ID)
);

CREATE TABLE sap_common_Currencies (
  name NVARCHAR(255),
  descr NVARCHAR(1000),
  code NVARCHAR(3) NOT NULL,
  symbol NVARCHAR(5),
  PRIMARY KEY(code)
);

CREATE TABLE sap_capire_products_Products_texts (
  locale NVARCHAR(14) NOT NULL,
  ID NVARCHAR(36) NOT NULL,
  title NVARCHAR(111),
  descr NVARCHAR(1111),
  PRIMARY KEY(locale, ID)
);

CREATE TABLE sap_capire_products_Categories_texts (
  locale NVARCHAR(14) NOT NULL,
  name NVARCHAR(255),
  descr NVARCHAR(1000),
  ID INTEGER NOT NULL,
  PRIMARY KEY(locale, ID)
);

CREATE TABLE sap_common_Currencies_texts (
  locale NVARCHAR(14) NOT NULL,
  name NVARCHAR(255),
  descr NVARCHAR(1000),
  code NVARCHAR(3) NOT NULL,
  PRIMARY KEY(locale, code)
);

CREATE VIEW localized_sap_capire_products_Products AS SELECT
  L_0.ID,
  L_0.createdAt,
  L_0.createdBy,
  L_0.modifiedAt,
  L_0.modifiedBy,
  coalesce(localized_1.title, L_0.title) AS title,
  coalesce(localized_1.descr, L_0.descr) AS descr,
  L_0.stock,
  L_0.price,
  L_0.currency_code,
  L_0.category_ID
FROM (sap_capire_products_Products AS L_0 LEFT JOIN sap_capire_products_Products_texts AS localized_1 ON localized_1.ID = L_0.ID AND localized_1.locale = 'en');

CREATE VIEW localized_sap_capire_products_Categories AS SELECT
  coalesce(localized_1.name, L_0.name) AS name,
  coalesce(localized_1.descr, L_0.descr) AS descr,
  L_0.ID,
  L_0.parent_ID
FROM (sap_capire_products_Categories AS L_0 LEFT JOIN sap_capire_products_Categories_texts AS localized_1 ON localized_1.ID = L_0.ID AND localized_1.locale = 'en');

CREATE VIEW localized_sap_common_Currencies AS SELECT
  coalesce(localized_1.name, L_0.name) AS name,
  coalesce(localized_1.descr, L_0.descr) AS descr,
  L_0.code,
  L_0.symbol
FROM (sap_common_Currencies AS L_0 LEFT JOIN sap_common_Currencies_texts AS localized_1 ON localized_1.code = L_0.code AND localized_1.locale = 'en');

CREATE VIEW localized_de_sap_capire_products_Products AS SELECT
  L_0.ID,
  L_0.createdAt,
  L_0.createdBy,
  L_0.modifiedAt,
  L_0.modifiedBy,
  coalesce(localized_de_1.title, L_0.title) AS title,
  coalesce(localized_de_1.descr, L_0.descr) AS descr,
  L_0.stock,
  L_0.price,
  L_0.currency_code,
  L_0.category_ID
FROM (sap_capire_products_Products AS L_0 LEFT JOIN sap_capire_products_Products_texts AS localized_de_1 ON localized_de_1.ID = L_0.ID AND localized_de_1.locale = 'de');

CREATE VIEW localized_fr_sap_capire_products_Products AS SELECT
  L_0.ID,
  L_0.createdAt,
  L_0.createdBy,
  L_0.modifiedAt,
  L_0.modifiedBy,
  coalesce(localized_fr_1.title, L_0.title) AS title,
  coalesce(localized_fr_1.descr, L_0.descr) AS descr,
  L_0.stock,
  L_0.price,
  L_0.currency_code,
  L_0.category_ID
FROM (sap_capire_products_Products AS L_0 LEFT JOIN sap_capire_products_Products_texts AS localized_fr_1 ON localized_fr_1.ID = L_0.ID AND localized_fr_1.locale = 'fr');

CREATE VIEW localized_de_sap_capire_products_Categories AS SELECT
  coalesce(localized_de_1.name, L_0.name) AS name,
  coalesce(localized_de_1.descr, L_0.descr) AS descr,
  L_0.ID,
  L_0.parent_ID
FROM (sap_capire_products_Categories AS L_0 LEFT JOIN sap_capire_products_Categories_texts AS localized_de_1 ON localized_de_1.ID = L_0.ID AND localized_de_1.locale = 'de');

CREATE VIEW localized_fr_sap_capire_products_Categories AS SELECT
  coalesce(localized_fr_1.name, L_0.name) AS name,
  coalesce(localized_fr_1.descr, L_0.descr) AS descr,
  L_0.ID,
  L_0.parent_ID
FROM (sap_capire_products_Categories AS L_0 LEFT JOIN sap_capire_products_Categories_texts AS localized_fr_1 ON localized_fr_1.ID = L_0.ID AND localized_fr_1.locale = 'fr');

CREATE VIEW localized_de_sap_common_Currencies AS SELECT
  coalesce(localized_de_1.name, L_0.name) AS name,
  coalesce(localized_de_1.descr, L_0.descr) AS descr,
  L_0.code,
  L_0.symbol
FROM (sap_common_Currencies AS L_0 LEFT JOIN sap_common_Currencies_texts AS localized_de_1 ON localized_de_1.code = L_0.code AND localized_de_1.locale = 'de');

CREATE VIEW localized_fr_sap_common_Currencies AS SELECT
  coalesce(localized_fr_1.name, L_0.name) AS name,
  coalesce(localized_fr_1.descr, L_0.descr) AS descr,
  L_0.code,
  L_0.symbol
FROM (sap_common_Currencies AS L_0 LEFT JOIN sap_common_Currencies_texts AS localized_fr_1 ON localized_fr_1.code = L_0.code AND localized_fr_1.locale = 'fr');

