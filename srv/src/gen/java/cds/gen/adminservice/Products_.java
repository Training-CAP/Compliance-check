package cds.gen.adminservice;

import com.sap.cds.ql.CdsName;
import com.sap.cds.ql.ElementRef;
import com.sap.cds.ql.StructuredType;
import java.lang.Integer;
import java.lang.String;

@CdsName("AdminService.Products")
public interface Products_ extends StructuredType<Products_> {
  String CDS_NAME = "AdminService.Products";

  ElementRef<Integer> ID();

  ElementRef<String> title();

  ElementRef<String> descr();
}
