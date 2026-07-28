import AxiallySymmetricSolutionsPdesCanonicalLaneLean.AxiSymmetricPDE

/-!
# Reduction to ODEs Package
-/

namespace HautevilleHouse
namespace AxiallySymmetricSolutionsPdesCanonicalLaneLean

structure ReductionToODEsPackage {P : AxiSymmetricPDEPackage} where
  radialCoordinateSystem : Prop
  angularDecoupling : Prop
  odeSystemDerived : Prop
  boundaryConditionsCompatible : Prop

structure ReductionToODEsEvidence {P : AxiSymmetricPDEPackage}
    (R : ReductionToODEsPackage P) where
  radialCoordinateSystemClosed : R.radialCoordinateSystem
  angularDecouplingClosed : R.angularDecoupling
  odeSystemDerivedClosed : R.odeSystemDerived
  boundaryConditionsCompatibleClosed : R.boundaryConditionsCompatible

def ReductionToODEsClosed {P : AxiSymmetricPDEPackage}
    (R : ReductionToODEsPackage P) : Prop :=
  R.radialCoordinateSystem ∧ R.angularDecoupling ∧
  R.odeSystemDerived ∧ R.boundaryConditionsCompatible

theorem reduction_to_odes_closed_from_evidence {P : AxiSymmetricPDEPackage}
    (R : ReductionToODEsPackage P) (E : ReductionToODEsEvidence R) :
    ReductionToODEsClosed R := by
  exact And.intro E.radialCoordinateSystemClosed
    (And.intro E.angularDecouplingClosed
      (And.intro E.odeSystemDerivedClosed E.boundaryConditionsCompatibleClosed))

end AxiallySymmetricSolutionsPdesCanonicalLaneLean
end HautevilleHouse