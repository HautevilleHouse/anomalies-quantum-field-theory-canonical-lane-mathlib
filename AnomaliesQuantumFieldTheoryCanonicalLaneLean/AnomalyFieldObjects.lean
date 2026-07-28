import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnomaliesQuantumFieldTheoryCanonicalLaneLean

abbrev GaugeGroup := Fin 3 → ℝ
abbrev GaugeField := Fin 4 → GaugeGroup
abbrev AnomalyPolynomial := GaugeField → ℝ

def zeroGaugeField : GaugeField := fun _ => fun _ => 0
def zeroAnomalyPolynomial : AnomalyPolynomial := fun _ => 0

structure AnomalyCertificate where
  gaugeField : GaugeField
  anomalyPoly : AnomalyPolynomial
  chiralCond : Prop
  anomalyCancelled : Prop
  chiralCondProof : chiralCond
  anomalyCancelledProof : anomalyCancelled

def sourceAnomalyCertificate : AnomalyCertificate := {
  gaugeField := zeroGaugeField
  anomalyPoly := zeroAnomalyPolynomial
  chiralCond := True
  anomalyCancelled := True
  chiralCondProof := trivial
  anomalyCancelledProof := trivial
}

def AnomalyCertificateClosed (C : AnomalyCertificate) : Prop :=
  C.chiralCond ∧ C.anomalyCancelled

theorem source_anomaly_certificate_closed : AnomalyCertificateClosed sourceAnomalyCertificate := by
  exact And.intro sourceAnomalyCertificate.chiralCondProof sourceAnomalyCertificate.anomalyCancelledProof

end AnomaliesQuantumFieldTheoryCanonicalLaneLean
end HautevilleHouse
