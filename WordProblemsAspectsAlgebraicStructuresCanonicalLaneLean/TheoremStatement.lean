import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "word-problems-aspects-algebraic-structures-canonical-lane",
  theoremName := "WordProblemsAspectsAlgebraicStructures",
  theoremObject := "Word problems aspects of algebraic structures",
  classicalBoundary := "classical boundary carried",
  manifoldConstrainedStatement := "manifold-constrained theorem certificate internalized through bridge and gate",
  certificateLane := "manifold_constrained",
  carriedRemainder := "classical source boundary carried by theoremBoundaryOpen"
}

end WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse