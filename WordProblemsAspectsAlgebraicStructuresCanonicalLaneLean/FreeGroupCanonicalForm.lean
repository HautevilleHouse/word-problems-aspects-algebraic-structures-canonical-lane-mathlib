import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean

structure FreeGroupCanonicalFormPackage where
  freeGroup : Type u
  reducedWordSet : Set (freeGroup)
  multiplicationTable : freeGroup → freeGroup → freeGroup
  canonicalFormUnique : Prop
  normalFormAlgorithm : Prop

structure FreeGroupCanonicalFormEvidence
    (F : FreeGroupCanonicalFormPackage) where
  canonicalFormUniqueClosed : F.canonicalFormUnique
  normalFormAlgorithmClosed : F.normalFormAlgorithm

def FreeGroupCanonicalFormClosed (F : FreeGroupCanonicalFormPackage) : Prop :=
  F.canonicalFormUnique ∧ F.normalFormAlgorithm

theorem free_group_canonical_form_closed_from_evidence
    (F : FreeGroupCanonicalFormPackage)
    (E : FreeGroupCanonicalFormEvidence F) : FreeGroupCanonicalFormClosed F := by
  exact And.intro E.canonicalFormUniqueClosed E.normalFormAlgorithmClosed

end WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse