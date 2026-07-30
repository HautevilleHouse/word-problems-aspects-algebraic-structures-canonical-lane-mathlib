import canonicalLaneMathlib.AdmissibleClass
import WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean.WordProblemAdmissibleClass

namespace HautevilleHouse
namespace WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean

def bridgeClosed (A : AdmissibleWordProblemObject) : Prop :=
  WordProblemWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleWordProblemObject) :
    bridgeClosed A := by
  exact A.object.wordProblemDecidableTerm

end WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse