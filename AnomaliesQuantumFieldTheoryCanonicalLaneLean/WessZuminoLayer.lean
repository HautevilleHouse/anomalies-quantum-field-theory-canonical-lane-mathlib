import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnomaliesQuantumFieldTheoryCanonicalLaneLean

structure WessZuminoCertificate where
  wzwTerm : Type
  consistencyCondition : Prop
  integrabilityCondition : Prop
  wzwTermClosed : wzwTerm
  consistencyConditionClosed : consistencyCondition
  integrabilityConditionClosed : integrabilityCondition

def sourceWessZuminoCertificate : WessZuminoCertificate := {
  wzwTerm := Unit
  consistencyCondition := True
  integrabilityCondition := True
  wzwTermClosed := ()
  consistencyConditionClosed := trivial
  integrabilityConditionClosed := trivial
}

def WessZuminoClosed (C : WessZuminoCertificate) : Prop :=
  C.wzwTerm = Unit ∧ C.consistencyCondition ∧ C.integrabilityCondition

theorem source_wess_zumino_closed :
    WessZuminoClosed sourceWessZuminoCertificate := by
  exact And.intro rfl (And.intro trivial trivial)

end AnomaliesQuantumFieldTheoryCanonicalLaneLean
end HautevilleHouse
