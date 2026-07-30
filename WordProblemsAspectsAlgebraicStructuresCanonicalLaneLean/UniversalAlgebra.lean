import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean

structure UniversalAlgebraPackage where
  carrier : Type u
  operations : List (Sigma (fun (arity : ℕ) => (carrier ^ arity) → carrier))
  identities : List Prop
  varietyAxioms : Prop

structure UniversalAlgebraEvidence (U : UniversalAlgebraPackage) where
  carrierNonempty : Nonempty U.carrier
  operationsClosed : ∀ (op : Sigma (fun (arity : ℕ) => (U.carrier ^ arity) → U.carrier)),
    op.snd ∈ U.operations
  identitiesClosed : U.identities = []
  varietyAxiomsClosed : U.varietyAxioms

def UniversalAlgebraClosed (U : UniversalAlgebraPackage) : Prop :=
  Nonempty U.carrier ∧
  (∀ (op : Sigma (fun (arity : ℕ) => (U.carrier ^ arity) → U.carrier)), op.snd ∈ U.operations) ∧
  U.identices = [] ∧
  U.varietyAxioms

theorem universal_algebra_closed_from_evidence (U : UniversalAlgebraPackage)
    (E : UniversalAlgebraEvidence U) : UniversalAlgebraClosed U := by
  exact And.intro E.carrierNonempty
    (And.intro E.operationsClosed
      (And.intro E.identitiesClosed E.varietyAxiomsClosed))

end WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse