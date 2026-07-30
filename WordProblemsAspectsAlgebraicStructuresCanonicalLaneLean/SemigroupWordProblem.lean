import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean

structure SemiGroup (A : Type u) where
  carrier : Type u
  mul : carrier → carrier → carrier
  assoc : ∀ a b c : carrier, mul (mul a b) c = mul a (mul b c)

structure SemiGroupPresentation (A : Type u) where
  generators : List A
  relations : List (List A × List A)
  presentedSemiGroup : SemiGroup A

structure SemiGroupWordProblemPackage (A : Type u) where
  presentation : SemiGroupPresentation A
  wordEquivalenceDecidable : Prop
  uniformWordProblem : Prop

structure SemiGroupWordProblemEvidence {A : Type u} (P : SemiGroupWordProblemPackage A) where
  wordEquivalenceDecidableClosed : P.wordEquivalenceDecidable
  uniformWordProblemClosed : P.uniformWordProblem

def SemiGroupWordProblemClosed {A : Type u} (P : SemiGroupWordProblemPackage A) : Prop :=
  P.wordEquivalenceDecidable ∧ P.uniformWordProblem

theorem semigroup_word_problem_closed_from_evidence {A : Type u} (P : SemiGroupWordProblemPackage A) (E : SemiGroupWordProblemEvidence P) : SemiGroupWordProblemClosed P :=
  And.intro E.wordEquivalenceDecidableClosed E.uniformWordProblemClosed

end WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse