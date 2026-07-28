import AxiallySymmetricSolutionsPdesCanonicalLaneLean.ReductionToODEs

/-!
# Stability Analysis Package
-/

namespace HautevilleHouse
namespace AxiallySymmetricSolutionsPdesCanonicalLaneLean

structure StabilityAnalysisPackage {P : AxiSymmetricPDEPackage}
    {R : ReductionToODEsPackage P} where
  linearStability : Prop
  nonlinearPerturbationBound : Prop
  asymptoticDecay : Prop
  symmetryPreservedUnderPerturbation : Prop

structure StabilityAnalysisEvidence {P : AxiSymmetricPDEPackage}
    {R : ReductionToODEsPackage P} (S : StabilityAnalysisPackage R) where
  linearStabilityClosed : S.linearStability
  nonlinearPerturbationBoundClosed : S.nonlinearPerturbationBound
  asymptoticDecayClosed : S.asymptoticDecay
  symmetryPreservedUnderPerturbationClosed : S.symmetryPreservedUnderPerturbation

def StabilityAnalysisClosed {P : AxiSymmetricPDEPackage}
    {R : ReductionToODEsPackage P} (S : StabilityAnalysisPackage R) : Prop :=
  S.linearStability ∧ S.nonlinearPerturbationBound ∧
  S.asymptoticDecay ∧ S.symmetryPreservedUnderPerturbation

theorem stability_analysis_closed_from_evidence {P : AxiSymmetricPDEPackage}
    {R : ReductionToODEsPackage P} (S : StabilityAnalysisPackage R)
    (E : StabilityAnalysisEvidence S) : StabilityAnalysisClosed S := by
  exact And.intro E.linearStabilityClosed
    (And.intro E.nonlinearPerturbationBoundClosed
      (And.intro E.asymptoticDecayClosed E.symmetryPreservedUnderPerturbationClosed))

end AxiallySymmetricSolutionsPdesCanonicalLaneLean
end HautevilleHouse