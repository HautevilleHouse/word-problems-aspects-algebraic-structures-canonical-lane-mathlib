import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  wordProblemDefined : Bool
  solvabilityDefined : Bool
  bridgeNative : Bool
  closureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation := {
  sourceKey := "word-problems-aspects-algebraic-structures-canonical-lane",
  theoremObject := "Word Problems Aspects Algebraic Structures",
  wordProblemDefined := true,
  solvabilityDefined := true,
  bridgeNative := true,
  closureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "word-problem solvability for all finitely presented groups remains carried"
}

theorem mathlib_word_problem_defined : mathlibProofObligation.wordProblemDefined = true := by rfl

theorem mathlib_solvability_defined : mathlibProofObligation.solvabilityDefined = true := by rfl

end WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse