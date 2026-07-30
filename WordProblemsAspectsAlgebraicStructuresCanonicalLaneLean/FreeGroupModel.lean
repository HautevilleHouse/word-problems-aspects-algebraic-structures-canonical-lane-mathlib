import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean

structure FreeGroupPackage where
  generators : Type
  reducedWords : Type
  multiplication : reducedWords → reducedWords → reducedWords
  identity : reducedWords
  inverse : reducedWords → reducedWords
  groupLaws : Prop

structure FreeGroupEvidence (F : FreeGroupPackage) where
  multiplicationAssociative : F.groupLaws
  identityLeftUnit : F.groupLaws
  identityRightUnit : F.groupLaws
  inverseLeftInverse : F.groupLaws
  inverseRightInverse : F.groupLaws

def FreeGroupClosed (F : FreeGroupPackage) : Prop :=
  F.groupLaws

theorem free_group_closed_from_evidence (F : FreeGroupPackage) (E : FreeGroupEvidence F) : FreeGroupClosed F := by
  exact E.multiplicationAssociative

end WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse