import AxiallySymmetricSolutionsPdesCanonicalLaneLean.AxisymmetricNavierStokesPackage

namespace HautevilleHouse
namespace AxiallySymmetricSolutionsPdesCanonicalLaneLean

structure VorticityStretchingPackage {A : AxiallySymmetricPdePackage}
    (NS : AxisymmetricNavierStokesPackage A) where
  stretchingTerm : Prop
  boundOnStretching : Prop
  compatibilityWithAxisymmetry : Prop

structure VorticityStretchingEvidence {A : AxiallySymmetricPdePackage}
    {NS : AxisymmetricNavierStokesPackage A} (VS : VorticityStretchingPackage NS) where
  stretchingTermClosed : VS.stretchingTerm
  boundOnStretchingClosed : VS.boundOnStretching
  compatibilityWithAxisymmetryClosed : VS.compatibilityWithAxisymmetry

def VorticityStretchingClosed {A : AxiallySymmetricPdePackage}
    {NS : AxisymmetricNavierStokesPackage A} (VS : VorticityStretchingPackage NS) : Prop :=
  VS.stretchingTerm ∧ VS.boundOnStretching ∧ VS.compatibilityWithAxisymmetry

theorem vorticity_stretching_closed_from_evidence
    {A : AxiallySymmetricPdePackage} {NS : AxisymmetricNavierStokesPackage A}
    (VS : VorticityStretchingPackage NS) (E : VorticityStretchingEvidence VS) :
    VorticityStretchingClosed VS := by
  exact And.intro E.stretchingTermClosed
    (And.intro E.boundOnStretchingClosed E.compatibilityWithAxisymmetryClosed)

end AxiallySymmetricSolutionsPdesCanonicalLaneLean
end HautevilleHouse