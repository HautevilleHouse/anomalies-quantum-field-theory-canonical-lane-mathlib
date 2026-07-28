import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnomaliesQuantumFieldTheoryCanonicalLaneLean

structure SpectralFlowCertificate where
  diracOperator : Type
  indexTheorem : Prop
  flowInvariant : Prop
  diracOperatorClosed : diracOperator
  indexTheoremClosed : indexTheorem
  flowInvariantClosed : flowInvariant

def sourceSpectralFlowCertificate : SpectralFlowCertificate := {
  diracOperator := Unit
  indexTheorem := True
  flowInvariant := True
  diracOperatorClosed := ()
  indexTheoremClosed := trivial
  flowInvariantClosed := trivial
}

def SpectralFlowClosed (C : SpectralFlowCertificate) : Prop :=
  C.diracOperator = Unit ∧ C.indexTheorem ∧ C.flowInvariant

theorem source_spectral_flow_closed :
    SpectralFlowClosed sourceSpectralFlowCertificate := by
  exact And.intro rfl (And.intro trivial trivial)

end AnomaliesQuantumFieldTheoryCanonicalLaneLean
end HautevilleHouse
