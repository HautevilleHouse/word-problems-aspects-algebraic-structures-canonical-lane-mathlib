import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean

structure GroupPresentation (A : Type u) where
  generators : List A
  relators : List (List (A × ℤ))
  groupType : Type u
  isomorphism : Prop

structure CayleyGraph (A : Type u) (G : GroupPresentation A) where
  vertices : Type u
  edges : A → vertices → vertices
  connected : Prop

structure DehnFunction (A : Type u) (G : GroupPresentation A) where
  isoperimetricInequality : ℕ → ℕ
  asymptotics : Prop

structure GroupPresentationPackage (A : Type u) where
  presentation : GroupPresentation A
  cayleyGraph : CayleyGraph A presentation
  dehnFunction : DehnFunction A presentation
  wordProblemSolvable : Prop

structure GroupPresentationEvidence {A : Type u} (P : GroupPresentationPackage A) where
  cayleyGraphConnectedClosed : P.cayleyGraph.connected
  dehnFunctionAsymptoticsClosed : P.dehnFunction.asymptotics
  wordProblemSolvableClosed : P.wordProblemSolvable

def GroupPresentationClosed {A : Type u} (P : GroupPresentationPackage A) : Prop :=
  P.cayleyGraph.connected ∧ P.dehnFunction.asymptotics ∧ P.wordProblemSolvable

theorem group_presentation_closed_from_evidence {A : Type u} (P : GroupPresentationPackage A) (E : GroupPresentationEvidence P) : GroupPresentationClosed P :=
  And.intro E.cayleyGraphConnectedClosed (And.intro E.dehnFunctionAsymptoticsClosed E.wordProblemSolvableClosed)

end WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse