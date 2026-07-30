import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean

structure WordProblemsAdmittedObject where
  groupPresentation : Type u
  wordProblemStatement : Prop
  decidabilityStatus : Prop
  conclusion : decidabilityStatus

structure AdmissibleClass where
  object : WordProblemsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  WordProblemsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def WordProblemsWitnessClosed (O : WordProblemsAdmittedObject) : Prop :=
  O.decidabilityStatus

end WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse