import canonicalLaneMathlib.AdmissibleClass
import WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean.UniversalPropertyPresentations

namespace HautevilleHouse
namespace WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean

structure DehnAlgorithmPackage (U : UniversalPropertyPackage) where
  rewritingSystem : Type
  confluent : Prop
  terminating : Prop
  normalFormFunction : U.group → String
  wordProblemDecidableViaNormalForms : Prop
  rewritingSystemConstructed : rewritingSystem
  confluenceProved : confluent
  terminationProved : terminating
  normalFormFunctionDefined : normalFormFunction
  wordProblemDecidableViaNormalFormsClosed : wordProblemDecidableViaNormalForms

structure DehnAlgorithmEvidence {U : UniversalPropertyPackage} (D : DehnAlgorithmPackage U) where
  rewritingSystemConstructedClosed : D.rewritingSystemConstructed
  confluenceProvedClosed : D.confluenceProved
  terminationProvedClosed : D.terminationProved
  normalFormFunctionDefinedClosed : D.normalFormFunctionDefined
  wordProblemDecidableViaNormalFormsClosed : D.wordProblemDecidableViaNormalForms

def DehnAlgorithmClosed {U : UniversalPropertyPackage} (D : DehnAlgorithmPackage U) : Prop :=
  D.wordProblemDecidableViaNormalForms ∧ D.confluent ∧ D.terminating

theorem dehn_algorithm_closed_from_evidence {U : UniversalPropertyPackage} (D : DehnAlgorithmPackage U) (E : DehnAlgorithmEvidence D) :
    DehnAlgorithmClosed D := by
  exact And.intro E.wordProblemDecidableViaNormalFormsClosed (And.intro E.confluenceProvedClosed E.terminationProvedClosed)

end WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse