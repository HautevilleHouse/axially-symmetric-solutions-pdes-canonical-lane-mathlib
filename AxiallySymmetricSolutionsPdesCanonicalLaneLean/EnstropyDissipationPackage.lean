import AxiallySymmetricSolutionsPdesCanonicalLaneLean.VorticityStretchingPackage

namespace HautevilleHouse
namespace AxiallySymmetricSolutionsPdesCanonicalLaneLean

structure EnstropyDissipationPackage {A : AxiallySymmetricPdePackage}
    {NS : AxisymmetricNavierStokesPackage A} {VS : VorticityStretchingPackage NS} where
  dissipationRate : Prop
  nonlinearBound : Prop
  regularityCriterion : Prop

structure EnstropyDissipationEvidence {A : AxiallySymmetricPdePackage}
    {NS : AxisymmetricNavierStokesPackage A} {VS : VorticityStretchingPackage NS}
    (ED : EnstropyDissipationPackage VS) where
  dissipationRateClosed : ED.dissipationRate
  nonlinearBoundClosed : ED.nonlinearBound
  regularityCriterionClosed : ED.regularityCriterion

def EnstropyDissipationClosed {A : AxiallySymmetricPdePackage}
    {NS : AxisymmetricNavierStokesPackage A} {VS : VorticityStretchingPackage NS}
    (ED : EnstropyDissipationPackage VS) : Prop :=
  ED.dissipationRate ∧ ED.nonlinearBound ∧ ED.regularityCriterion

theorem enstropy_dissipation_closed_from_evidence
    {A : AxiallySymmetricPdePackage} {NS : AxisymmetricNavierStokesPackage A}
    {VS : VorticityStretchingPackage NS} (ED : EnstropyDissipationPackage VS)
    (E : EnstropyDissipationEvidence ED) : EnstropyDissipationClosed ED := by
  exact And.intro E.dissipationRateClosed
    (And.intro E.nonlinearBoundClosed E.regularityCriterionClosed)

end AxiallySymmetricSolutionsPdesCanonicalLaneLean
end HautevilleHouse