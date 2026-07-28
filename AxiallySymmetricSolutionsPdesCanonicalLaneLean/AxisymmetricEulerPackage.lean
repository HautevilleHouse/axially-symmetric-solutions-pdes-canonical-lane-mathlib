import AxiallySymmetricSolutionsPdesCanonicalLaneLean.AxiallySymmetricPdePackage

namespace HautevilleHouse
namespace AxiallySymmetricSolutionsPdesCanonicalLaneLean

structure AxisymmetricEulerPackage (A : AxiallySymmetricPdePackage) where
  inviscidCondition : Prop
  vorticityTransport : Prop
  swirlComponent : Prop
  axisOfSymmetryRegularity : Prop

structure AxisymmetricEulerEvidence {A : AxiallySymmetricPdePackage}
    (Eul : AxisymmetricEulerPackage A) where
  inviscidConditionClosed : Eul.inviscidCondition
  vorticityTransportClosed : Eul.vorticityTransport
  swirlComponentClosed : Eul.swirlComponent
  axisOfSymmetryRegularityClosed : Eul.axisOfSymmetryRegularity

def AxisymmetricEulerClosed {A : AxiallySymmetricPdePackage}
    (Eul : AxisymmetricEulerPackage A) : Prop :=
  Eul.inviscidCondition ∧ Eul.vorticityTransport ∧
  Eul.swirlComponent ∧ Eul.axisOfSymmetryRegularity

theorem axisymmetric_euler_closed_from_evidence
    {A : AxiallySymmetricPdePackage} (Eul : AxisymmetricEulerPackage A)
    (E : AxisymmetricEulerEvidence Eul) : AxisymmetricEulerClosed Eul := by
  exact And.intro E.inviscidConditionClosed
    (And.intro E.vorticityTransportClosed
      (And.intro E.swirlComponentClosed E.axisOfSymmetryRegularityClosed))

end AxiallySymmetricSolutionsPdesCanonicalLaneLean
end HautevilleHouse