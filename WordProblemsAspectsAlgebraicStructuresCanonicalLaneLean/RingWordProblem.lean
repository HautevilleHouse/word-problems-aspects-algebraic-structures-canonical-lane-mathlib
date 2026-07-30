import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean

structure Ring (A : Type u) where
  carrier : Type u
  add : carrier → carrier → carrier
  mul : carrier → carrier → carrier
  zero : carrier
  one : carrier
  addAssoc : ∀ a b c : carrier, add (add a b) c = add a (add b c)
  addComm : ∀ a b : carrier, add a b = add b a
  addZero : ∀ a : carrier, add a zero = a
  zeroAdd : ∀ a : carrier, add zero a = a
  addInv : ∀ a : carrier, ∃ b : carrier, add a b = zero
  mulAssoc : ∀ a b c : carrier, mul (mul a b) c = mul a (mul b c)
  mulOne : ∀ a : carrier, mul a one = a
  oneMul : ∀ a : carrier, mul one a = a
  leftDistrib : ∀ a b c : carrier, mul a (add b c) = add (mul a b) (mul a c)
  rightDistrib : ∀ a b c : carrier, mul (add a b) c = add (mul a c) (mul b c)

structure RingPresentation (A : Type u) where
  generators : List A
  relations : List (List A × List A)
  presentedRing : Ring A

structure RingWordProblemPackage (A : Type u) where
  presentation : RingPresentation A
  wordProblemSolvable : Prop
  idealMembershipProblem : Prop

structure RingWordProblemEvidence {A : Type u} (P : RingWordProblemPackage A) where
  wordProblemSolvableClosed : P.wordProblemSolvable
  idealMembershipProblemClosed : P.idealMembershipProblem

def RingWordProblemClosed {A : Type u} (P : RingWordProblemPackage A) : Prop :=
  P.wordProblemSolvable ∧ P.idealMembershipProblem

theorem ring_word_problem_closed_from_evidence {A : Type u} (P : RingWordProblemPackage A) (E : RingWordProblemEvidence P) : RingWordProblemClosed P :=
  And.intro E.wordProblemSolvableClosed E.idealMembershipProblemClosed

end WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse