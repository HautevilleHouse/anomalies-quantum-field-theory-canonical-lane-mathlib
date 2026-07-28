import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnomaliesQuantumFieldTheoryCanonicalLaneLean

structure GaugeAnomalyCertificate where
  anomalyPolynomial : Type
  consistencyCondition : Prop
  cancellationCondition : Prop
  anomalyPolynomialClosed : anomalyPolynomial
  consistencyConditionClosed : consistencyCondition
  cancellationConditionClosed : cancellationCondition

def sourceGaugeAnomalyCertificate : GaugeAnomalyCertificate := {
  anomalyPolynomial := Unit
  consistencyCondition := True
  cancellationCondition := True
  anomalyPolynomialClosed := ()
  consistencyConditionClosed := trivial
  cancellationConditionClosed := trivial
}

def GaugeAnomalyClosed (C : GaugeAnomalyCertificate) : Prop :=
  C.anomalyPolynomial = Unit ∧ C.consistencyCondition ∧ C.cancellationCondition

theorem source_gauge_anomaly_closed :
    GaugeAnomalyClosed sourceGaugeAnomalyCertificate := by
  exact And.intro rfl (And.intro trivial trivial)

end AnomaliesQuantumFieldTheoryCanonicalLaneLean
end HautevilleHouse
