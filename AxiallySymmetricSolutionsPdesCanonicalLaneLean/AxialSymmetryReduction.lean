import canonicalLaneMathlib.AdmissibleClass
import AxiallySymmetricSolutionsPdesCanonicalLaneLean.AxiallySymmetricPDE

namespace HautevilleHouse
namespace AxiallySymmetricSolutionsPdesCanonicalLaneLean

structure AxialSymmetryReductionPackage (P : AxiallySymmetricPDE) where
  reductionMap : Prop
  invariantFunctions : Prop
  reducedEquationDerived : Prop
  compatibilityWithBoundary : Prop

structure AxialSymmetryReductionEvidence {P : AxiallySymmetricPDE}
    (R : AxialSymmetryReductionPackage P) where
  reductionMapClosed : R.reductionMap
  invariantFunctionsClosed : R.invariantFunctions
  reducedEquationDerivedClosed : R.reducedEquationDerived
  compatibilityWithBoundaryClosed : R.compatibilityWithBoundary

def AxialSymmetryReductionClosed {P : AxiallySymmetricPDE}
    (R : AxialSymmetryReductionPackage P) : Prop :=
  R.reductionMap ∧ R.invariantFunctions ∧
  R.reducedEquationDerived ∧ R.compatibilityWithBoundary

theorem axial_symmetry_reduction_closed_from_evidence
    {P : AxiallySymmetricPDE} (R : AxialSymmetryReductionPackage P)
    (E : AxialSymmetryReductionEvidence R) : AxialSymmetryReductionClosed R := by
  exact And.intro E.reductionMapClosed
    (And.intro E.invariantFunctionsClosed
      (And.intro E.reducedEquationDerivedClosed E.compatibilityWithBoundaryClosed))

end AxiallySymmetricSolutionsPdesCanonicalLaneLean
end HautevilleHouse