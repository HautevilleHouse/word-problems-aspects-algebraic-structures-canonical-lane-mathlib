import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean

structure Monoid (A : Type u) where
  carrier : Type u
  mul : carrier → carrier → carrier
  one : carrier
  mulAssoc : ∀ a b c : carrier, mul (mul a b) c = mul a (mul b c)
  oneMul : ∀ a : carrier, mul one a = a
  mulOne : ∀ a : carrier, mul a one = a

structure MonoidPresentation (A : Type u) where
  generators : List A
  relations : List (List A × List A)
  presentedMonoid : Monoid A

structure MonoidWordProblemPackage (A : Type u) where
  presentation : MonoidPresentation A
  wordProblemSolvable : Prop
  identityProblem : Prop

structure MonoidWordProblemEvidence {A : Type u} (P : MonoidWordProblemPackage A) where
  wordProblemSolvableClosed : P.wordProblemSolvable
  identityProblemClosed : P.identityProblem

def MonoidWordProblemClosed {A : Type u} (P : MonoidWordProblemPackage A) : Prop :=
  P.wordProblemSolvable ∧ P.identityProblem

theorem monoid_word_problem_closed_from_evidence {A : Type u} (P : MonoidWordProblemPackage A) (E : MonoidWordProblemEvidence P) : MonoidWordProblemClosed P :=
  And.intro E.wordProblemSolvableClosed E.identityProblemClosed

end WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse