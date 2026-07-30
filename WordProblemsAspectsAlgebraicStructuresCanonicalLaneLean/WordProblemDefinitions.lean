import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse
