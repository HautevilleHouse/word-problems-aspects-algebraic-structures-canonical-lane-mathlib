import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean

structure FreeMagma (A : Type u) where
  leaf : A → FreeMagma A
  branch : FreeMagma A → FreeMagma A → FreeMagma A

inductive WordEquivalence {A : Type u} : FreeMagma A → FreeMagma A → Prop where
  | refl (w : FreeMagma A) : WordEquivalence w w
  | symm {u v : FreeMagma A} (h : WordEquivalence u v) : WordEquivalence v u
  | trans {u v w : FreeMagma A} (h1 : WordEquivalence u v) (h2 : WordEquivalence v w) : WordEquivalence u w
  | cong (h1 : WordEquivalence u u') (h2 : WordEquivalence v v') : WordEquivalence (branch u v) (branch u' v')

structure WordProblemPackage (A : Type u) where
  alphabet : A
  freeMagma : FreeMagma A
  equivalence : WordEquivalence
  equivalenceDecidable : Prop
  normalFormExists : Prop

structure WordProblemEvidence {A : Type u} (P : WordProblemPackage A) where
  equivalenceDecidableClosed : P.equivalenceDecidable
  normalFormExistsClosed : P.normalFormExists

def WordProblemClosed {A : Type u} (P : WordProblemPackage A) : Prop :=
  P.equivalenceDecidable ∧ P.normalFormExists

theorem word_problem_closed_from_evidence {A : Type u} (P : WordProblemPackage A) (E : WordProblemEvidence P) : WordProblemClosed P :=
  And.intro E.equivalenceDecidableClosed E.normalFormExistsClosed

end WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse