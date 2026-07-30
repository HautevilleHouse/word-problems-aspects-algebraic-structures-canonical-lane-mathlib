import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean

structure WordProblemResolvabilityPackage where
  presentedGroup : Type u
  generators : List (presentedGroup)
  relations : List (presentedGroup → presentedGroup → Prop)
  wordProblemDecidable : Prop
  algorithmExists : Prop

structure WordProblemResolvabilityEvidence
    (W : WordProblemResolvabilityPackage) where
  wordProblemDecidableClosed : W.wordProblemDecidable
  algorithmExistsClosed : W.algorithmExists

def WordProblemResolvabilityClosed (W : WordProblemResolvabilityPackage) : Prop :=
  W.wordProblemDecidable ∧ W.algorithmExists

theorem word_problem_resolvability_closed_from_evidence
    (W : WordProblemResolvabilityPackage)
    (E : WordProblemResolvabilityEvidence W) : WordProblemResolvabilityClosed W := by
  exact And.intro E.wordProblemDecidableClosed E.algorithmExistsClosed

end WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse