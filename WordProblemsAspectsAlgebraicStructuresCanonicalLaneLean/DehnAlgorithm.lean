import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean

structure DehnAlgorithmPackage where
  presentation : GroupPresentationPackage
  smallCancellationCondition : Prop
  algorithmDefined : Prop
  algorithmCorrect : Prop
  turingMachineSimulation : Prop

structure DehnAlgorithmEvidence (D : DehnAlgorithmPackage) where
  smallCancellationConditionClosed : D.smallCancellationCondition
  algorithmDefinedClosed : D.algorithmDefined
  algorithmCorrectClosed : D.algorithmCorrect
  turingMachineSimulationClosed : D.turingMachineSimulation

def DehnAlgorithmClosed (D : DehnAlgorithmPackage) : Prop :=
  D.smallCancellationCondition ∧ D.algorithmDefined ∧ D.algorithmCorrect ∧ D.turingMachineSimulation

theorem dehn_algorithm_closed_from_evidence (D : DehnAlgorithmPackage) (E : DehnAlgorithmEvidence D) : DehnAlgorithmClosed D := by
  exact And.intro E.smallCancellationConditionClosed (And.intro E.algorithmDefinedClosed (And.intro E.algorithmCorrectClosed E.turingMachineSimulationClosed))

end WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse