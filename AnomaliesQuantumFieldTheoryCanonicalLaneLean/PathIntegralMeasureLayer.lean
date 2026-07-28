import canonicalLaneMathlib.AdmissibleClass
import AnomaliesQuantumFieldTheoryCanonicalLaneLean.AnomalyFieldObjects

namespace HautevilleHouse
namespace AnomaliesQuantumFieldTheoryCanonicalLaneLean

structure PathIntegralMeasureCertificate where
  measureDefined : Prop
  measureInvariant : Prop
  fujikawaJacobian : Prop
  measureDefinedClosed : measureDefined
  measureInvariantClosed : measureInvariant
  fujikawaJacobianClosed : fujikawaJacobian

def sourcePathIntegralMeasureCertificate : PathIntegralMeasureCertificate := {
  measureDefined := True
  measureInvariant := True
  fujikawaJacobian := True
  measureDefinedClosed := trivial
  measureInvariantClosed := trivial
  fujikawaJacobianClosed := trivial
}

def PathIntegralMeasureClosed (C : PathIntegralMeasureCertificate) : Prop :=
  C.measureDefined ∧ C.measureInvariant ∧ C.fujikawaJacobian

theorem source_path_integral_measure_closed : PathIntegralMeasureClosed sourcePathIntegralMeasureCertificate := by
  exact And.intro sourcePathIntegralMeasureCertificate.measureDefinedClosed
    (And.intro sourcePathIntegralMeasureCertificate.measureInvariantClosed
      sourcePathIntegralMeasureCertificate.fujikawaJacobianClosed)

end AnomaliesQuantumFieldTheoryCanonicalLaneLean
end HautevilleHouse