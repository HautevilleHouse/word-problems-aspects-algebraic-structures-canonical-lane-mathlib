import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean

structure FreeGroupWordProblemDecidabilityPackage where
  alphabetType : Type u
  wordEqualityDecidable : Prop
  groupPresentation : Prop
  reductionProcessTerminates : Prop
  canonicalFormExists : Prop

structure FreeGroupDecidabilityEvidence (P : FreeGroupWordProblemDecidabilityPackage) where
  wordEqualityDecidableClosed : P.wordEqualityDecidable
  groupPresentationClosed : P.groupPresentation
  reductionProcessTerminatesClosed : P.reductionProcessTerminates
  canonicalFormExistsClosed : P.canonicalFormExists

def FreeGroupDecidabilityClosed (P : FreeGroupWordProblemDecidabilityPackage) : Prop :=
  P.wordEqualityDecidable ∧ P.groupPresentation ∧ P.reductionProcessTerminates ∧ P.canonicalFormExists

theorem free_group_decidability_closed_from_evidence (P : FreeGroupWordProblemDecidabilityPackage) (E : FreeGroupDecidabilityEvidence P) : FreeGroupDecidabilityClosed P :=
  And.intro E.wordEqualityDecidableClosed (And.intro E.groupPresentationClosed (And.intro E.reductionProcessTerminatesClosed E.canonicalFormExistsClosed))

end WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse