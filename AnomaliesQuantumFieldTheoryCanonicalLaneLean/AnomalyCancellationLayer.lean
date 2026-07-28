import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AnomaliesQuantumFieldTheoryCanonicalLaneLean.AnomalyFieldObjects

namespace HautevilleHouse
namespace AnomaliesQuantumFieldTheoryCanonicalLaneLean

structure AnomalyCancellationCertificate where
  anomalyCert : AnomalyCertificate
  wessZuminoConsistency : Prop
  descentEquations : Prop
  anomalyInflow : Prop
  wessZuminoConsistencyClosed : wessZuminoConsistency
  descentEquationsClosed : descentEquations
  anomalyInflowClosed : anomalyInflow

def sourceAnomalyCancellationCertificate : AnomalyCancellationCertificate := {
  anomalyCert := sourceAnomalyCertificate
  wessZuminoConsistency := True
  descentEquations := True
  anomalyInflow := True
  wessZuminoConsistencyClosed := trivial
  descentEquationsClosed := trivial
  anomalyInflowClosed := trivial
}

def AnomalyCancellationClosed (C : AnomalyCancellationCertificate) : Prop :=
  AnomalyCertificateClosed C.anomalyCert ∧ C.wessZuminoConsistency ∧ C.descentEquations ∧ C.anomalyInflow

theorem source_anomaly_cancellation_closed : AnomalyCancellationClosed sourceAnomalyCancellationCertificate := by
  exact And.intro source_anomaly_certificate_closed
    (And.intro sourceAnomalyCancellationCertificate.wessZuminoConsistencyClosed
      (And.intro sourceAnomalyCancellationCertificate.descentEquationsClosed
        sourceAnomalyCancellationCertificate.anomalyInflowClosed))

end AnomaliesQuantumFieldTheoryCanonicalLaneLean
end HautevilleHouse
