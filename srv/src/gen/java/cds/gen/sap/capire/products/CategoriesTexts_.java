package cds.gen.sap.capire.products;

import com.sap.cds.ql.CdsName;
import com.sap.cds.ql.ElementRef;
import com.sap.cds.ql.StructuredType;
import java.lang.Integer;
import java.lang.String;

@CdsName("sap.capire.products.Categories.texts")
public interface CategoriesTexts_ extends StructuredType<CategoriesTexts_> {
  String CDS_NAME = "sap.capire.products.Categories.texts";

  ElementRef<String> locale();

  ElementRef<String> name();

  ElementRef<String> descr();

  ElementRef<Integer> ID();
}
