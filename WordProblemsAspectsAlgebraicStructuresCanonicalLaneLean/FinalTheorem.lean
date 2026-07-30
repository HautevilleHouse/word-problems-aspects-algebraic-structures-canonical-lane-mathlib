import canonicalLaneMathlib.AdmissibleClass
import WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean

def WordProblemClosure (A : AdmissibleWordProblemObject) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem word_problem_endgame (A : AdmissibleWordProblemObject) :
    WordProblemClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse