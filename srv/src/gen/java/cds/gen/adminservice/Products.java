package cds.gen.adminservice;

import com.sap.cds.CdsData;
import com.sap.cds.Struct;
import com.sap.cds.ql.CdsName;
import java.lang.Integer;
import java.lang.String;
import java.util.HashMap;
import java.util.Map;

@CdsName("AdminService.Products")
public interface Products extends CdsData {
  String ID = "ID";

  String TITLE = "title";

  String DESCR = "descr";

  @CdsName(ID)
  Integer getId();

  @CdsName(ID)
  void setId(Integer id);

  String getTitle();

  void setTitle(String title);

  String getDescr();

  void setDescr(String descr);

  Products_ ref();

  static Products create() {
    return Struct.create(Products.class);
  }

  static Products create(Integer id) {
    Map<String, Object> keys = new HashMap<>();
    keys.put(ID, id);
    return Struct.access(keys).as(Products.class);
  }
}
