import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AxiallySymmetricSolutionsPdesCanonicalLaneLean.AxiallySymmetricDomain

namespace HautevilleHouse
namespace AxiallySymmetricSolutionsPdesCanonicalLaneLean

structure EnergyEstimate (D : AxiallySymmetricDomain) where
  kineticEnergy : ℝ → ℝ
  dissipation : ℝ → ℝ
  energyInequality : Prop
  boundedness : Prop

structure EnergyEstimateEvidence {D : AxiallySymmetricDomain} (E : EnergyEstimate D) where
  energyInequalityClosed : E.energyInequality
  boundednessClosed : E.boundedness

def EnergyEstimateClosed {D : AxiallySymmetricDomain} (E : EnergyEstimate D) : Prop :=
  E.energyInequality ∧ E.boundedness

theorem energy_estimate_closed_from_evidence {D : AxiallySymmetricDomain} (E : EnergyEstimate D)
    (Ev : EnergyEstimateEvidence E) : EnergyEstimateClosed E :=
  And.intro Ev.energyInequalityClosed Ev.boundednessClosed

end AxiallySymmetricSolutionsPdesCanonicalLaneLean
end HautevilleHouse