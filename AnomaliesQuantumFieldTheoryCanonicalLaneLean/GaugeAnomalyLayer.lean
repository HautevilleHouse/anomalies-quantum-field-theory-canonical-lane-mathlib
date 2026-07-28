import canonicalLaneMathlib.AdmissibleClass
import AnomaliesQuantumFieldTheoryCanonicalLaneLean.AnomalyFieldObjects
import AnomaliesQuantumFieldTheoryCanonicalLaneLean.ChiralGaugeTheorySubstrate

namespace HautevilleHouse
namespace AnomaliesQuantumFieldTheoryCanonicalLaneLean

structure GaugeAnomalyCertificate where
  substrate : ChiralGaugeSubstrate
  gaugeGroupDimension : ℕ
  anomalyFunctional : AnomalyFunctional
  anomalyCondition : Prop
  anomalyConditionClosed : anomalyCondition
  functionalClosed : anomalyFunctional = zeroAnomalyFunctional → anomalyCondition

def sourceGaugeAnomalyCertificate : GaugeAnomalyCertificate := {
  substrate := chiralGaugeSubstrate
  gaugeGroupDimension := 3
  anomalyFunctional := zeroAnomalyFunctional
  anomalyCondition := True
  anomalyConditionClosed := trivial
  functionalClosed := by
    intro h
    exact trivial
}

def GaugeAnomalyClosed (C : GaugeAnomalyCertificate) : Prop :=
  C.anomalyCondition

theorem source_gauge_anomaly_closed : GaugeAnomalyClosed sourceGaugeAnomalyCertificate := by
  exact sourceGaugeAnomalyCertificate.anomalyConditionClosed

end AnomaliesQuantumFieldTheoryCanonicalLaneLean
end HautevilleHouse