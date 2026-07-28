import AxiallySymmetricSolutionsPdesCanonicalLaneLean.AxiallySymmetricPdePackage

namespace HautevilleHouse
namespace AxiallySymmetricSolutionsPdesCanonicalLaneLean

structure AxisymmetricNavierStokesPackage (A : AxiallySymmetricPdePackage) where
  viscosity : Prop
  nonlinearTerm : Prop
  pressureGradient : Prop
  regularityOnAxis : Prop
  energyEstimates : Prop

structure AxisymmetricNavierStokesEvidence {A : AxiallySymmetricPdePackage}
    (NS : AxisymmetricNavierStokesPackage A) where
  viscosityClosed : NS.viscosity
  nonlinearTermClosed : NS.nonlinearTerm
  pressureGradientClosed : NS.pressureGradient
  regularityOnAxisClosed : NS.regularityOnAxis
  energyEstimatesClosed : NS.energyEstimates

def AxisymmetricNavierStokesClosed {A : AxiallySymmetricPdePackage}
    (NS : AxisymmetricNavierStokesPackage A) : Prop :=
  NS.viscosity ∧ NS.nonlinearTerm ∧ NS.pressureGradient ∧
  NS.regularityOnAxis ∧ NS.energyEstimates

theorem axisymmetric_navier_stokes_closed_from_evidence
    {A : AxiallySymmetricPdePackage} (NS : AxisymmetricNavierStokesPackage A)
    (E : AxisymmetricNavierStokesEvidence NS) : AxisymmetricNavierStokesClosed NS := by
  exact And.intro E.viscosityClosed
    (And.intro E.nonlinearTermClosed
      (And.intro E.pressureGradientClosed
        (And.intro E.regularityOnAxisClosed E.energyEstimatesClosed)))

end AxiallySymmetricSolutionsPdesCanonicalLaneLean
end HautevilleHouse