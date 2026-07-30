import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean

structure DehnAlgorithmPackage where
  groupPresentation : Type u
  finitePresentation : Prop
  smallCancellationCondition : Prop
  rewritesRules : Type v
  algorithmTerminates : Prop
  solvesWordProblem : Prop

structure DehnAlgorithmEvidence (D : DehnAlgorithmPackage) where
  finitePresentationClosed : D.finitePresentation
  smallCancellationConditionClosed : D.smallCancellationCondition
  algorithmTerminatesClosed : D.algorithmTerminates
  solvesWordProblemClosed : D.solvesWordProblem

def DehnAlgorithmClosed (D : DehnAlgorithmPackage) : Prop :=
  D.finitePresentation ∧ D.smallCancellationCondition ∧ D.algorithmTerminates ∧ D.solvesWordProblem

theorem dehn_algorithm_closed_from_evidence (D : DehnAlgorithmPackage) (E : DehnAlgorithmEvidence D) : DehnAlgorithmClosed D :=
  And.intro E.finitePresentationClosed (And.intro E.smallCancellationConditionClosed (And.intro E.algorithmTerminatesClosed E.solvesWordProblemClosed))

end WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse