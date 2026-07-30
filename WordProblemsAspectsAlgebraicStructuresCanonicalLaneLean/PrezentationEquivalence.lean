import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean

structure PresentationEquivalencePackage where
  presentationA : Type u
  presentationB : Type u
  TietzeTransformSequence : List (Type u → Type u)
  isEquivalent : Prop

structure PresentationEquivalenceEvidence
    (P : PresentationEquivalencePackage) where
  tietzeSequenceApplied : P.TietzeTransformSequence ≠ []
  isEquivalentClosed : P.isEquivalent

def PresentationEquivalenceClosed (P : PresentationEquivalencePackage) : Prop :=
  P.TietzeTransformSequence ≠ [] ∧ P.isEquivalent

theorem presentation_equivalence_closed_from_evidence
    (P : PresentationEquivalencePackage)
    (E : PresentationEquivalenceEvidence P) : PresentationEquivalenceClosed P := by
  exact And.intro E.tietzeSequenceApplied E.isEquivalentClosed

end WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse