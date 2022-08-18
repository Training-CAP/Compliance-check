package cds.gen.sap.capire.products;

import com.sap.cds.CdsData;
import com.sap.cds.Struct;
import com.sap.cds.ql.CdsName;
import java.lang.String;

@CdsName("sap.capire.products.Products.texts")
public interface ProductsTexts extends CdsData {
  String LOCALE = "locale";

  String ID = "ID";

  String TITLE = "title";

  String DESCR = "descr";

  /**
   * Type for a language code
   */
  String getLocale();

  /**
   * Type for a language code
   */
  void setLocale(String locale);

  @CdsName(ID)
  String getId();

  @CdsName(ID)
  void setId(String id);

  String getTitle();

  void setTitle(String title);

  String getDescr();

  void setDescr(String descr);

  ProductsTexts_ ref();

  static ProductsTexts create() {
    return Struct.create(ProductsTexts.class);
  }
}
