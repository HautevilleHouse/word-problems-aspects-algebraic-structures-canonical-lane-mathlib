import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean

structure FreeGroupEvidenceTerms {F : FreeGroupPackage} (C : FreeGroupEvidence F) where
  multiplicationAssociative : C.multiplicationAssociative
  identityLeftUnit : C.identityLeftUnit
  identityRightUnit : C.identityRightUnit
  inverseLeftInverse : C.inverseLeftInverse
  inverseRightInverse : C.inverseRightInverse

def FreeGroupEvidence.evidenceTerms {F : FreeGroupPackage} (C : FreeGroupEvidence F) : FreeGroupEvidenceTerms C := {
  multiplicationAssociative := C.multiplicationAssociative
  identityLeftUnit := C.identityLeftUnit
  identityRightUnit := C.identityRightUnit
  inverseLeftInverse := C.inverseLeftInverse
  inverseRightInverse := C.inverseRightInverse
}

structure GroupPresentationEvidenceTerms {P : GroupPresentationPackage} (C : GroupPresentationEvidence P) where
  quotientPresentedClosed : C.quotientPresentedClosed
  wordProblemReductionClosed : C.wordProblemReductionClosed

def GroupPresentationEvidence.evidenceTerms {P : GroupPresentationPackage} (C : GroupPresentationEvidence P) : GroupPresentationEvidenceTerms C := {
  quotientPresentedClosed := C.quotientPresentedClosed
  wordProblemReductionClosed := C.wordProblemReductionClosed
}

structure DehnAlgorithmEvidenceTerms {D : DehnAlgorithmPackage} (C : DehnAlgorithmEvidence D) where
  smallCancellationConditionClosed : C.smallCancellationConditionClosed
  algorithmDefinedClosed : C.algorithmDefinedClosed
  algorithmCorrectClosed : C.algorithmCorrectClosed
  turingMachineSimulationClosed : C.turingMachineSimulationClosed

def DehnAlgorithmEvidence.evidenceTerms {D : DehnAlgorithmPackage} (C : DehnAlgorithmEvidence D) : DehnAlgorithmEvidenceTerms C := {
  smallCancellationConditionClosed := C.smallCancellationConditionClosed
  algorithmDefinedClosed := C.algorithmDefinedClosed
  algorithmCorrectClosed := C.algorithmCorrectClosed
  turingMachineSimulationClosed := C.turingMachineSimulationClosed
}

end WordProblemsAspectsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse