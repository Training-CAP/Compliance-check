package cds.gen.sap.capire.evaluation;

import com.sap.cds.ql.CdsName;
import com.sap.cds.ql.ElementRef;
import com.sap.cds.ql.StructuredType;
import java.lang.String;
import java.time.Instant;
import java.time.LocalDate;

/**
 * Aspect to capture changes by user and name
 *
 * See https://cap.cloud.sap/docs/cds/common#aspect-managed
 */
@CdsName("sap.capire.evaluation.evaluation")
public interface Evaluation_ extends StructuredType<Evaluation_> {
  String CDS_NAME = "sap.capire.evaluation.evaluation";

  ElementRef<Instant> createdAt();

  ElementRef<String> createdBy();

  ElementRef<Instant> modifiedAt();

  ElementRef<String> modifiedBy();

  ElementRef<String> ID();

  ElementRef<String> name();

  ElementRef<String> brief();

  ElementRef<String> sellingmarket();

  ElementRef<LocalDate> Valid_from();

  ElementRef<LocalDate> Valid_to();

  ElementRef<String> status();
}
