import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean

structure FreeGroupGeneration where
  generators : Type
  word : List (Sum generators generators)
  reducedForm : List (Sum generators generators)
  reductionSteps : Prop
  reductionClosed : reductionSteps

structure FreeGroupWordEquality where
  gen : FreeGroupGeneration
  lhs : gen.word
  rhs : gen.word
  equalityClosed : Prop
  equalityEvidence : equalityClosed

def free_group_equality_bridge (F : FreeGroupWordEquality) : Prop :=
  F.equalityClosed

end WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse
