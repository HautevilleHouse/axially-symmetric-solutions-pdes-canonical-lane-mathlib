import canonicalLaneMathlib.AdmissibleClass
import AxiallySymmetricSolutionsPdesCanonicalLaneLean.AxiallySymmetricPDE
import AxiallySymmetricSolutionsPdesCanonicalLaneLean.AxialSymmetryReduction

namespace HautevilleHouse
namespace AxiallySymmetricSolutionsPdesCanonicalLaneLean

structure AxialSymmetryWellPosednessPackage {P : AxiallySymmetricPDE}
    {R : AxialSymmetryReductionPackage P} where
  localExistence : Prop
  uniqueness : Prop
  continuousDependence : Prop
  globalExistenceUnderBounds : Prop

structure AxialSymmetryWellPosednessEvidence {P : AxiallySymmetricPDE}
    {R : AxialSymmetryReductionPackage P}
    (W : AxialSymmetryWellPosednessPackage R) where
  localExistenceClosed : W.localExistence
  uniquenessClosed : W.uniqueness
  continuousDependenceClosed : W.continuousDependence
  globalExistenceUnderBoundsClosed : W.globalExistenceUnderBounds

def AxialSymmetryWellPosednessClosed {P : AxiallySymmetricPDE}
    {R : AxialSymmetryReductionPackage P}
    (W : AxialSymmetryWellPosednessPackage R) : Prop :=
  W.localExistence ∧ W.uniqueness ∧
  W.continuousDependence ∧ W.globalExistenceUnderBounds

theorem axial_symmetry_well_posedness_closed_from_evidence
    {P : AxiallySymmetricPDE} {R : AxialSymmetryReductionPackage P}
    (W : AxialSymmetryWellPosednessPackage R)
    (E : AxialSymmetryWellPosednessEvidence W) : AxialSymmetryWellPosednessClosed W := by
  exact And.intro E.localExistenceClosed
    (And.intro E.uniquenessClosed
      (And.intro E.continuousDependenceClosed E.globalExistenceUnderBoundsClosed))

end AxiallySymmetricSolutionsPdesCanonicalLaneLean
end HautevilleHouse