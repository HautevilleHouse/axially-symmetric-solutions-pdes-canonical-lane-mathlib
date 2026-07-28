import canonicalLaneMathlib.AdmissibleClass
import AxiallySymmetricSolutionsPdesCanonicalLaneLean.AxisymmetricPDE

namespace HautevilleHouse
namespace AxiallySymmetricSolutionsPdesCanonicalLaneLean

structure BoundaryLayerPackage {P : AxisymmetricPDEPackage} where
  layerThickness : ℝ
  asymptoticExpansion : Prop
  matchingCondition : Prop
  stabilityEstimate : Prop

structure BoundaryLayerEvidence {P : AxisymmetricPDEPackage} (B : BoundaryLayerPackage P) where
  asymptoticExpansionClosed : B.asymptoticExpansion
  matchingConditionClosed : B.matchingCondition
  stabilityEstimateClosed : B.stabilityEstimate

def BoundaryLayerClosed {P : AxisymmetricPDEPackage} (B : BoundaryLayerPackage P) : Prop :=
  B.asymptoticExpansion ∧ B.matchingCondition ∧ B.stabilityEstimate

theorem boundary_layer_closed_from_evidence {P : AxisymmetricPDEPackage} (B : BoundaryLayerPackage P) (E : BoundaryLayerEvidence B) : BoundaryLayerClosed B :=
  And.intro E.asymptoticExpansionClosed (And.intro E.matchingConditionClosed E.stabilityEstimateClosed)

end AxiallySymmetricSolutionsPdesCanonicalLaneLean
end HautevilleHouse
