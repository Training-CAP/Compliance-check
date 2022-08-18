package cds.gen.sap.capire.evaluation;

import com.sap.cds.CdsData;
import com.sap.cds.Struct;
import com.sap.cds.ql.CdsName;
import java.lang.String;
import java.time.Instant;
import java.time.LocalDate;
import java.util.HashMap;
import java.util.Map;

/**
 * Aspect to capture changes by user and name
 *
 * See https://cap.cloud.sap/docs/cds/common#aspect-managed
 */
@CdsName("sap.capire.evaluation.evaluation")
public interface Evaluation extends CdsData {
  String CREATED_AT = "createdAt";

  String CREATED_BY = "createdBy";

  String MODIFIED_AT = "modifiedAt";

  String MODIFIED_BY = "modifiedBy";

  String ID = "ID";

  String NAME = "name";

  String BRIEF = "brief";

  String SELLINGMARKET = "sellingmarket";

  String VALID_FROM = "Valid_from";

  String VALID_TO = "Valid_to";

  String STATUS = "status";

  Instant getCreatedAt();

  void setCreatedAt(Instant createdAt);

  /**
   * Canonical user ID
   */
  String getCreatedBy();

  /**
   * Canonical user ID
   */
  void setCreatedBy(String createdBy);

  Instant getModifiedAt();

  void setModifiedAt(Instant modifiedAt);

  /**
   * Canonical user ID
   */
  String getModifiedBy();

  /**
   * Canonical user ID
   */
  void setModifiedBy(String modifiedBy);

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

  String getStatus();

  void setStatus(String status);

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
