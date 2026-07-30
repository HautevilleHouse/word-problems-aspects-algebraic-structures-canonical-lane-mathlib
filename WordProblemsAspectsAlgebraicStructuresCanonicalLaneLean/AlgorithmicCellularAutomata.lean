import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean

structure AlgorithmicCellularAutomataPackage where
  stateSet : Type u
  updateRule : (stateSet → stateSet) → stateSet → stateSet
  reachabilityDecidable : Prop
  simulationExists : Prop

structure AlgorithmicCellularAutomataEvidence
    (A : AlgorithmicCellularAutomataPackage) where
  reachabilityDecidableClosed : A.reachabilityDecidable
  simulationExistsClosed : A.simulationExists

def AlgorithmicCellularAutomataClosed (A : AlgorithmicCellularAutomataPackage) : Prop :=
  A.reachabilityDecidable ∧ A.simulationExists

theorem algorithmic_cellular_automata_closed_from_evidence
    (A : AlgorithmicCellularAutomataPackage)
    (E : AlgorithmicCellularAutomataEvidence A) : AlgorithmicCellularAutomataClosed A := by
  exact And.intro E.reachabilityDecidableClosed E.simulationExistsClosed

end WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse