package cds.gen.evaluationservice;

import com.sap.cds.ql.CdsName;
import com.sap.cds.ql.ElementRef;
import com.sap.cds.ql.StructuredType;
import java.lang.String;
import java.time.LocalDate;

@CdsName("evaluationService.evaluation")
public interface Evaluation_ extends StructuredType<Evaluation_> {
  String CDS_NAME = "evaluationService.evaluation";

  ElementRef<String> ID();

  ElementRef<String> name();

  ElementRef<String> brief();

  ElementRef<String> sellingmarket();

  ElementRef<LocalDate> valid_from();

  ElementRef<LocalDate> valid_to();
}
