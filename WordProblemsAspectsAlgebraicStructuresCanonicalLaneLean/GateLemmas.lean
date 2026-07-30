import canonicalLaneMathlib.AdmissibleClass
import WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean

def gateClosed (A : AdmissibleWordProblemObject) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleWordProblemObject) :
    gateClosed A := by
  exact A.gateWitness

end WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse