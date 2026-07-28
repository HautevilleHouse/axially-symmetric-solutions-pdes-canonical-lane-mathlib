import canonicalLaneMathlib.AdmissibleClass
import AxiallySymmetricSolutionsPdesCanonicalLaneLean.AxialEnergyEstimates

namespace HautevilleHouse
namespace AxiallySymmetricSolutionsPdesCanonicalLaneLean

structure AxialWellPosedness {D : AxiallySymmetricDomain} {R : AxialSymmetryReduction D} (P : AxiallySymmetricPDE R) (E : AxialEnergyEstimates P) where
  localExistence : Prop
  uniqueness : Prop
  continuousDependence : Prop
  globalExistenceCondition : Prop

structure AxialWellPosednessEvidence {D : AxiallySymmetricDomain} {R : AxialSymmetryReduction D} {P : AxiallySymmetricPDE R} {E : AxialEnergyEstimates P} (W : AxialWellPosedness P E) where
  localExistenceClosed : W.localExistence
  uniquenessClosed : W.uniqueness
  continuousDependenceClosed : W.continuousDependence
  globalExistenceConditionClosed : W.globalExistenceCondition

def AxialWellPosednessClosed {D : AxiallySymmetricDomain} {R : AxialSymmetryReduction D} {P : AxiallySymmetricPDE R} {E : AxialEnergyEstimates P} (W : AxialWellPosedness P E) : Prop :=
  W.localExistence ∧ W.uniqueness ∧ W.continuousDependence ∧ W.globalExistenceCondition

theorem axial_well_posedness_closed_from_evidence {D : AxiallySymmetricDomain} {R : AxialSymmetryReduction D} {P : AxiallySymmetricPDE R} {E : AxialEnergyEstimates P} (W : AxialWellPosedness P E) (Ev : AxialWellPosednessEvidence W) : AxialWellPosednessClosed W := by
  exact And.intro Ev.localExistenceClosed (And.intro Ev.uniquenessClosed (And.intro Ev.continuousDependenceClosed Ev.globalExistenceConditionClosed))

end AxiallySymmetricSolutionsPdesCanonicalLaneLean
end HautevilleHouse