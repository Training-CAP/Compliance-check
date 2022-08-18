package cds.gen.sap.capire.products;

import com.sap.cds.ql.CdsName;
import java.lang.Class;
import java.lang.String;

@CdsName("sap.capire.products")
public interface ProductsModel_ {
  String CDS_NAME = "sap.capire.products";

  Class<Products_> PRODUCTS = Products_.class;

  Class<CategoriesTexts_> CATEGORIES_TEXTS = CategoriesTexts_.class;

  Class<Categories_> CATEGORIES = Categories_.class;

  Class<ProductsTexts_> PRODUCTS_TEXTS = ProductsTexts_.class;
}
