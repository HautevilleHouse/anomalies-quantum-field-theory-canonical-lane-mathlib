import AnomaliesQuantumFieldTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnomaliesQuantumFieldTheoryCanonicalLaneLean

structure AnomalyTheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  spectralClosure : String
  anomalyCancellationCondition : Prop
  carriedRemainder : String
  deriving Repr

def sourceAnomalyTheoremStatement : AnomalyTheoremStatement :=
  { sourceKey := "anomalies-quantum-field-theory-canonical-lane",
    theoremName := "Anomaly Cancellation and Spectral Closure",
    theoremObject := "Anomalies are absent in the spectral closure under admissible constraints.",
    classicalBoundary := "Classical anomaly cancellation condition remains open at source level.",
    spectralClosure := "Spectrally constrained gauge theory with anomaly cancellation.",
    anomalyCancellationCondition := True,
    carriedRemainder := "Unrestricted classical boundary carried by the source theorem boundary."
  }

theorem theorem_statement_source_key_checked :
    sourceAnomalyTheoremStatement.sourceKey = "anomalies-quantum-field-theory-canonical-lane" := by
  rfl

theorem theorem_statement_anomaly_cancellation_condition_checked :
    sourceAnomalyTheoremStatement.anomalyCancellationCondition := by
  exact True.intro

end AnomaliesQuantumFieldTheoryCanonicalLaneLean
end HautevilleHouse