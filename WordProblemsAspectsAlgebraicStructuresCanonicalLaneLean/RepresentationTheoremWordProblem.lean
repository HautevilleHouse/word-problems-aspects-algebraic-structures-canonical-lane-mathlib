import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean

structure GroupRepresentation where
  group : GroupPresentation
  targetType : Type
  homomorphism : group.generators → targetType
  homomorphismAdmissible : Prop
  homomorphismAdmissibleClosed : homomorphismAdmissible

structure RepresentationTheoremWordProblemEvidence (R : GroupRepresentation) where
  wordProblemInTargetDecidable : Prop
  wordProblemInTargetDecidableClosed : wordProblemInTargetDecidable

def representation_word_problem_bridge (R : GroupRepresentation) : Prop :=
  R.homomorphismAdmissible

end WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse
