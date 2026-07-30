import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean

structure NovikovBooneConstructionPackage where
  finitelyPresentedGroup : Type u
  undecidableWordProblem : Prop
  explicitPresentation : Prop
  encodingOfTuringMachine : Prop
  reductionFromHalting : Prop

structure NovikovBooneEvidence (N : NovikovBooneConstructionPackage) where
  undecidableWordProblemClosed : N.undecidableWordProblem
  explicitPresentationClosed : N.explicitPresentation
  encodingOfTuringMachineClosed : N.encodingOfTuringMachine
  reductionFromHaltingClosed : N.reductionFromHalting

def NovikovBooneConstructionClosed (N : NovikovBooneConstructionPackage) : Prop :=
  N.undecidableWordProblem ∧ N.explicitPresentation ∧ N.encodingOfTuringMachine ∧ N.reductionFromHalting

theorem novikov_boone_construction_closed_from_evidence (N : NovikovBooneConstructionPackage) (E : NovikovBooneEvidence N) : NovikovBooneConstructionClosed N :=
  And.intro E.undecidableWordProblemClosed (And.intro E.explicitPresentationClosed (And.intro E.encodingOfTuringMachineClosed E.reductionFromHaltingClosed))

end WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse