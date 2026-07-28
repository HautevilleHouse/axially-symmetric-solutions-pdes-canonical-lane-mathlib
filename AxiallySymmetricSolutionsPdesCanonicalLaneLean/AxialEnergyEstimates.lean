import canonicalLaneMathlib.AdmissibleClass
import AxiallySymmetricSolutionsPdesCanonicalLaneLean.AxiallySymmetricPDE

namespace HautevilleHouse
namespace AxiallySymmetricSolutionsPdesCanonicalLaneLean

structure AxialEnergyEstimates {D : AxiallySymmetricDomain} {R : AxialSymmetryReduction D} (P : AxiallySymmetricPDE R) where
  energyFunctional : Type
  coercivity : Prop
  growthBound : Prop
  monotonicity : Prop

structure AxialEnergyEstimatesEvidence {D : AxiallySymmetricDomain} {R : AxialSymmetryReduction D} {P : AxiallySymmetricPDE R} (E : AxialEnergyEstimates P) where
  coercivityClosed : E.coercivity
  growthBoundClosed : E.growthBound
  monotonicityClosed : E.monotonicity

def AxialEnergyEstimatesClosed {D : AxiallySymmetricDomain} {R : AxialSymmetryReduction D} {P : AxiallySymmetricPDE R} (E : AxialEnergyEstimates P) : Prop :=
  E.coercivity ∧ E.growthBound ∧ E.monotonicity

theorem axial_energy_estimates_closed_from_evidence {D : AxiallySymmetricDomain} {R : AxialSymmetryReduction D} {P : AxiallySymmetricPDE R} (Es : AxialEnergyEstimates P) (Ev : AxialEnergyEstimatesEvidence Es) : AxialEnergyEstimatesClosed Es := by
  exact And.intro Ev.coercivityClosed (And.intro Ev.growthBoundClosed Ev.monotonicityClosed)

end AxiallySymmetricSolutionsPdesCanonicalLaneLean
end HautevilleHouse