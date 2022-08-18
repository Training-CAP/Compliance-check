package cds.gen.sap.capire.products;

import cds.gen.sap.common.Currencies_;
import com.sap.cds.ql.CdsName;
import com.sap.cds.ql.ElementRef;
import com.sap.cds.ql.StructuredType;
import com.sap.cds.ql.cqn.CqnPredicate;
import java.lang.Integer;
import java.lang.String;
import java.math.BigDecimal;
import java.time.Instant;
import java.util.function.Function;

/**
 * Aspect to capture changes by user and name
 *
 * See https://cap.cloud.sap/docs/cds/common#aspect-managed
 */
@CdsName("sap.capire.products.Products")
public interface Products_ extends StructuredType<Products_> {
  String CDS_NAME = "sap.capire.products.Products";

  ElementRef<String> ID();

  ElementRef<Instant> createdAt();

  ElementRef<String> createdBy();

  ElementRef<Instant> modifiedAt();

  ElementRef<String> modifiedBy();

  ElementRef<String> title();

  ElementRef<String> descr();

  ElementRef<Integer> stock();

  ElementRef<BigDecimal> price();

  Currencies_ currency();

  Currencies_ currency(Function<Currencies_, CqnPredicate> filter);

  ElementRef<String> currency_code();

  Categories_ category();

  Categories_ category(Function<Categories_, CqnPredicate> filter);

  ElementRef<Integer> category_ID();

  ProductsTexts_ texts();

  ProductsTexts_ texts(Function<ProductsTexts_, CqnPredicate> filter);

  ProductsTexts_ localized();

  ProductsTexts_ localized(Function<ProductsTexts_, CqnPredicate> filter);
}
