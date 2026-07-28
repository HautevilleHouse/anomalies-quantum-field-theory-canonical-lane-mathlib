import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AnomaliesQuantumFieldTheoryCanonicalLaneLean.AnomalyCancellationLayer

namespace HautevilleHouse
namespace AnomaliesQuantumFieldTheoryCanonicalLaneLean

def AnomalyAdmissibleClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem anomaly_admissible_closure (A : AdmissibleClass) : AnomalyAdmissibleClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

def anomalyAdmittedObject : AdmittedTheoremObject := {
  object := {
    sourceKey := "anomalies-qft-canonical-lane"
    theoremObject := "Anomaly cancellation in quantum field theory"
    claimBoundary := "Anomaly cancellation conditions are satisfied"
  }
  localWitness := "Anomaly cancellation certificate"
  bridgeEvidence := "Source-derived Lean data"
  sourceKeyChecked := rfl
  theoremObjectChecked := rfl
}

def anomalyAdmissibleClass : AdmissibleClass := {
  object := anomalyAdmittedObject
  endpointSatisfied := AnomalyCancellationClosed sourceAnomalyCancellationCertificate
  remainderRecorded := True
  gateWitness := Or.inl source_anomaly_cancellation_closed
}

def AnomalyDomainClosure : Prop :=
  AnomalyCancellationClosed sourceAnomalyCancellationCertificate ∧ AnomalyAdmissibleClosure anomalyAdmissibleClass

theorem anomaly_domain_closure_checked : AnomalyDomainClosure := by
  exact And.intro source_anomaly_cancellation_closed (anomaly_admissible_closure anomalyAdmissibleClass)

end AnomaliesQuantumFieldTheoryCanonicalLaneLean
end HautevilleHouse
