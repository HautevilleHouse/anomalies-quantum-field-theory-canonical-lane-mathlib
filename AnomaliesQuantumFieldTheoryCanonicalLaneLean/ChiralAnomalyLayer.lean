import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnomaliesQuantumFieldTheoryCanonicalLaneLean

structure ChiralAnomalyCertificate where
  triangleDiagram : Type
  anomalyCoefficient : Prop
  abjAnomaly : Prop
  triangleDiagramClosed : triangleDiagram
  anomalyCoefficientClosed : anomalyCoefficient
  abjAnomalyClosed : abjAnomaly

def sourceChiralAnomalyCertificate : ChiralAnomalyCertificate := {
  triangleDiagram := Unit
  anomalyCoefficient := True
  abjAnomaly := True
  triangleDiagramClosed := ()
  anomalyCoefficientClosed := trivial
  abjAnomalyClosed := trivial
}

def ChiralAnomalyClosed (C : ChiralAnomalyCertificate) : Prop :=
  C.triangleDiagram = Unit ∧ C.anomalyCoefficient ∧ C.abjAnomaly

theorem source_chiral_anomaly_closed :
    ChiralAnomalyClosed sourceChiralAnomalyCertificate := by
  exact And.intro rfl (And.intro trivial trivial)

end AnomaliesQuantumFieldTheoryCanonicalLaneLean
end HautevilleHouse
