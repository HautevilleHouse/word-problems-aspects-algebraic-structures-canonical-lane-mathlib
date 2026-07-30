import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean

structure WordProblemObject where
  presentation : Type
  generators : List String
  relations : List (List String × List String)
  group : Type
  groupMultiplication : group → group → group
  groupIdentity : group
  groupInverse : group → group
  presentationRespects : Prop
  wordProblemDecidable : Prop
  wordProblemDecidableTerm : wordProblemDecidable

def WordProblemWitnessClosed (O : WordProblemObject) : Prop :=
  O.wordProblemDecidable

structure AdmissibleWordProblemObject where
  object : WordProblemObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleWordProblemObject) : Prop :=
  WordProblemWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse