import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AxiallySymmetricSolutionsPdesCanonicalLaneLean.AxiallySymmetricDomain

namespace HautevilleHouse
namespace AxiallySymmetricSolutionsPdesCanonicalLaneLean

structure SingularityCriterion (D : AxiallySymmetricDomain) where
  condition : Prop
  blowUpPossible : Prop
  regularityCriterion : Prop

structure SingularityCriterionEvidence {D : AxiallySymmetricDomain} (S : SingularityCriterion D) where
  conditionClosed : S.condition
  blowUpPossibleClosed : S.blowUpPossible
  regularityCriterionClosed : S.regularityCriterion

def SingularityCriterionClosed {D : AxiallySymmetricDomain} (S : SingularityCriterion D) : Prop :=
  S.condition ∧ S.blowUpPossible ∧ S.regularityCriterion

theorem singularity_criterion_closed_from_evidence {D : AxiallySymmetricDomain} (S : SingularityCriterion D)
    (E : SingularityCriterionEvidence S) : SingularityCriterionClosed S :=
  And.intro E.conditionClosed (And.intro E.blowUpPossibleClosed E.regularityCriterionClosed)

end AxiallySymmetricSolutionsPdesCanonicalLaneLean
end HautevilleHouse