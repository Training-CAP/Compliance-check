package cds.gen.evaluationservice;

import com.sap.cds.CdsData;
import com.sap.cds.Struct;
import com.sap.cds.ql.CdsName;
import java.lang.String;
import java.time.LocalDate;
import java.util.HashMap;
import java.util.Map;

@CdsName("evaluationService.evaluation")
public interface Evaluation extends CdsData {
  String ID = "ID";

  String NAME = "name";

  String BRIEF = "brief";

  String SELLINGMARKET = "sellingmarket";

  String VALID_FROM = "valid_from";

  String VALID_TO = "valid_to";

  @CdsName(ID)
  String getId();

  @CdsName(ID)
  void setId(String id);

  String getName();

  void setName(String name);

  String getBrief();

  void setBrief(String brief);

  String getSellingmarket();

  void setSellingmarket(String sellingmarket);

  @CdsName(VALID_FROM)
  LocalDate getValidFrom();

  @CdsName(VALID_FROM)
  void setValidFrom(LocalDate validFrom);

  @CdsName(VALID_TO)
  LocalDate getValidTo();

  @CdsName(VALID_TO)
  void setValidTo(LocalDate validTo);

  Evaluation_ ref();

  static Evaluation create() {
    return Struct.create(Evaluation.class);
  }

  static Evaluation create(String id) {
    Map<String, Object> keys = new HashMap<>();
    keys.put(ID, id);
    return Struct.access(keys).as(Evaluation.class);
  }
}
