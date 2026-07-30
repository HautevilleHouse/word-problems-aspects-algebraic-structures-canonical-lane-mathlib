import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean

structure GroupPresentation where
  generators : Type
  relators : List (List (Sum generators generators))
  groupAdmissible : Prop
  groupAdmissibleClosed : groupAdmissible

structure GroupWordProblemEvidence (G : GroupPresentation) where
  wordProblemDecidable : Prop
  wordProblemDecidableClosed : wordProblemDecidable

def group_word_problem_bridge (G : GroupPresentation) : Prop :=
  G.groupAdmissible

end WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse
