import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AxiallySymmetricSolutionsPdesCanonicalLaneLean.AxiallySymmetricDomain

namespace HautevilleHouse
namespace AxiallySymmetricSolutionsPdesCanonicalLaneLean

structure AxisymmetricPDE (D : AxiallySymmetricDomain) where
  velocityField : ℝ × ℝ → ℝ × ℝ
  pressure : ℝ × ℝ → ℝ
  viscosity : ℝ
  pdeEquation : Prop
  initialCondition : Prop
  boundaryCondition : Prop

structure AxisymmetricPDEEvidence {D : AxiallySymmetricDomain} (P : AxisymmetricPDE D) where
  pdeEquationClosed : P.pdeEquation
  initialConditionClosed : P.initialCondition
  boundaryConditionClosed : P.boundaryCondition

def AxisymmetricPDEClosed {D : AxiallySymmetricDomain} (P : AxisymmetricPDE D) : Prop :=
  P.pdeEquation ∧ P.initialCondition ∧ P.boundaryCondition

theorem axisymmetric_pde_closed_from_evidence {D : AxiallySymmetricDomain} (P : AxisymmetricPDE D)
    (E : AxisymmetricPDEEvidence P) : AxisymmetricPDEClosed P :=
  And.intro E.pdeEquationClosed (And.intro E.initialConditionClosed E.boundaryConditionClosed)

end AxiallySymmetricSolutionsPdesCanonicalLaneLean
end HautevilleHouse