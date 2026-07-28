import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiallySymmetricSolutionsPdesCanonicalLaneLean

structure AxiallySymmetricPdePackage where
  spaceTime : Type u
  cylindricalCoordinates : Type v
  initialData : Type w
  solutionFamily : Type x
  axialSymmetryCondition : Prop
  pdeEquation : Prop
  boundaryConditions : Prop

structure AxiallySymmetricPdeEvidence (A : AxiallySymmetricPdePackage) where
  axialSymmetryConditionClosed : A.axialSymmetryCondition
  pdeEquationClosed : A.pdeEquation
  boundaryConditionsClosed : A.boundaryConditions

def AxiallySymmetricPdeClosed (A : AxiallySymmetricPdePackage) : Prop :=
  A.axialSymmetryCondition ∧ A.pdeEquation ∧ A.boundaryConditions

theorem axially_symmetric_pde_closed_from_evidence (A : AxiallySymmetricPdePackage)
    (E : AxiallySymmetricPdeEvidence A) : AxiallySymmetricPdeClosed A := by
  exact And.intro E.axialSymmetryConditionClosed
    (And.intro E.pdeEquationClosed E.boundaryConditionsClosed)

end AxiallySymmetricSolutionsPdesCanonicalLaneLean
end HautevilleHouse