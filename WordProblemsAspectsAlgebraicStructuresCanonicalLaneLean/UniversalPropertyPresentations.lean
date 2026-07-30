import canonicalLaneMathlib.AdmissibleClass
import WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean.WordProblemAdmissibleClass

namespace HautevilleHouse
namespace WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean

structure UniversalPropertyPackage where
  group : Type
  generators : List String
  relations : List (List String × List String)
  freeGroup : Type
  quotientMap : freeGroup → group
  universalProperty : Prop
  uniqueHomomorphismFromFreeGroup : Prop
  wordProblemReduction : Prop
  universalPropertyClosed : universalProperty
  uniqueHomomorphismFromFreeGroupClosed : uniqueHomomorphismFromFreeGroup
  wordProblemReductionClosed : wordProblemReduction

structure UniversalPropertyEvidence (U : UniversalPropertyPackage) where
  universalPropertyClosed : U.universalProperty
  uniqueHomomorphismFromFreeGroupClosed : U.uniqueHomomorphismFromFreeGroup
  wordProblemReductionClosed : U.wordProblemReduction

def UniversalPropertyClosed (U : UniversalPropertyPackage) : Prop :=
  U.universalProperty ∧ U.uniqueHomomorphismFromFreeGroup ∧ U.wordProblemReduction

theorem universal_property_closed_from_evidence (U : UniversalPropertyPackage) (E : UniversalPropertyEvidence U) :
    UniversalPropertyClosed U := by
  exact And.intro E.universalPropertyClosed (And.intro E.uniqueHomomorphismFromFreeGroupClosed E.wordProblemReductionClosed)

end WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse