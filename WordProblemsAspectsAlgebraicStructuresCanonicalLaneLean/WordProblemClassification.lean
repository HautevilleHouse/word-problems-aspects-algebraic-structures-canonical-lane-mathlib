import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean

structure WordProblemClassificationPackage where
  classOfGroups : Type u
  wordProblemSolvable : Prop
  structuralCharacterization : Prop
  examplesOfDecidable : List String
  examplesOfUndecidable : List String
  classificationCriteria : Prop

structure WordProblemClassificationEvidence (C : WordProblemClassificationPackage) where
  wordProblemSolvableClosed : C.wordProblemSolvable
  structuralCharacterizationClosed : C.structuralCharacterization
  classificationCriteriaClosed : C.classificationCriteria

def WordProblemClassificationClosed (C : WordProblemClassificationPackage) : Prop :=
  C.wordProblemSolvable ∧ C.structuralCharacterization ∧ C.classificationCriteria

theorem word_problem_classification_closed_from_evidence (C : WordProblemClassificationPackage) (E : WordProblemClassificationEvidence C) : WordProblemClassificationClosed C :=
  And.intro E.wordProblemSolvableClosed (And.intro E.structuralCharacterizationClosed E.classificationCriteriaClosed)

end WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse