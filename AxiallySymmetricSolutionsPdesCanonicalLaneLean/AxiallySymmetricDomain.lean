import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiallySymmetricSolutionsPdesCanonicalLaneLean

structure AxiallySymmetricDomain where
  rRange : ℝ × ℝ
  zRange : ℝ × ℝ
  metric : ℝ × ℝ → ℝ → ℝ  -- placeholder for axisymmetric metric
  regularity : Prop
  compactness : Prop

structure AxiallySymmetricDomainEvidence (D : AxiallySymmetricDomain) where
  regularityClosed : D.regularity
  compactnessClosed : D.compactness

def AxiallySymmetricDomainClosed (D : AxiallySymmetricDomain) : Prop :=
  D.regularity ∧ D.compactness

theorem axially_symmetric_domain_closed_from_evidence (D : AxiallySymmetricDomain)
    (E : AxiallySymmetricDomainEvidence D) : AxiallySymmetricDomainClosed D :=
  And.intro E.regularityClosed E.compactnessClosed

end AxiallySymmetricSolutionsPdesCanonicalLaneLean
end HautevilleHouse