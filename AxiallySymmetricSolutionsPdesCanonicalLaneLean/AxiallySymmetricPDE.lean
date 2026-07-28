import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiallySymmetricSolutionsPdesCanonicalLaneLean

structure AxiallySymmetricPDE where
  domain : Type u
  coordinateSystem : Type v
  axialSymmetryGroupAction : Prop
  reducedOperator : Prop
  boundaryConditions : Prop
  solutionSpace : Type w

structure AxiallySymmetricPDEEvidence (P : AxiallySymmetricPDE) where
  axialSymmetryGroupActionClosed : P.axialSymmetryGroupAction
  reducedOperatorClosed : P.reducedOperator
  boundaryConditionsClosed : P.boundaryConditions

def AxiallySymmetricPDEClosed (P : AxiallySymmetricPDE) : Prop :=
  P.axialSymmetryGroupAction ∧ P.reducedOperator ∧ P.boundaryConditions

theorem axially_symmetric_pde_closed_from_evidence
    (P : AxiallySymmetricPDE) (E : AxiallySymmetricPDEEvidence P) :
    AxiallySymmetricPDEClosed P := by
  exact And.intro E.axialSymmetryGroupActionClosed
    (And.intro E.reducedOperatorClosed E.boundaryConditionsClosed)

end AxiallySymmetricSolutionsPdesCanonicalLaneLean
end HautevilleHouse