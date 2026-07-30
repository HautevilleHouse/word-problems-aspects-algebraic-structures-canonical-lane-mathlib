import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean

structure WordProblemSpace where
  carrier : Type
  presentation : List (String × String)  -- generators × relations

structure WordProblemAdmittedObject where
  space : WordProblemSpace
  finitelyPresentedGroup : Prop
  wordProblemSolvable : Prop
  conclusion : wordProblemSolvable

definition WordProblemWitnessClosed (O : WordProblemAdmittedObject) : Prop :=
  O.wordProblemSolvable

end WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse