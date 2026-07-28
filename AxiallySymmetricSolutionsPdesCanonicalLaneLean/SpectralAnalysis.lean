import canonicalLaneMathlib.AdmissibleClass
import AxiallySymmetricSolutionsPdesCanonicalLaneLean.AxisymmetricPDE

namespace HautevilleHouse
namespace AxiallySymmetricSolutionsPdesCanonicalLaneLean

structure SpectralAnalysisPackage {P : AxisymmetricPDEPackage} where
  eigenfunctionBasis : Type u
  eigenvalueAsymptotics : Prop
  resolventEstimates : Prop
  spectralGap : Prop

structure SpectralAnalysisEvidence {P : AxisymmetricPDEPackage} (S : SpectralAnalysisPackage P) where
  eigenvalueAsymptoticsClosed : S.eigenvalueAsymptotics
  resolventEstimatesClosed : S.resolventEstimates
  spectralGapClosed : S.spectralGap

def SpectralAnalysisClosed {P : AxisymmetricPDEPackage} (S : SpectralAnalysisPackage P) : Prop :=
  S.eigenvalueAsymptotics ∧ S.resolventEstimates ∧ S.spectralGap

theorem spectral_analysis_closed_from_evidence {P : AxisymmetricPDEPackage} (S : SpectralAnalysisPackage P) (E : SpectralAnalysisEvidence S) : SpectralAnalysisClosed S :=
  And.intro E.eigenvalueAsymptoticsClosed (And.intro E.resolventEstimatesClosed E.spectralGapClosed)

end AxiallySymmetricSolutionsPdesCanonicalLaneLean
end HautevilleHouse
