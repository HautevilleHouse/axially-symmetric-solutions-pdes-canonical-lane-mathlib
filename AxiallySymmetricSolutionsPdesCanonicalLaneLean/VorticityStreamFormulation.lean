import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AxiallySymmetricSolutionsPdesCanonicalLaneLean.AxiallySymmetricDomain

namespace HautevilleHouse
namespace AxiallySymmetricSolutionsPdesCanonicalLaneLean

structure VorticityStreamFunction (D : AxiallySymmetricDomain) where
  vorticity : ℝ × ℝ → ℝ
  streamFunction : ℝ × ℝ → ℝ
  poissonEquation : Prop
  transportEquation : Prop

structure VorticityStreamEvidence {D : AxiallySymmetricDomain} (V : VorticityStreamFunction D) where
  poissonEquationClosed : V.poissonEquation
  transportEquationClosed : V.transportEquation

def VorticityStreamClosed {D : AxiallySymmetricDomain} (V : VorticityStreamFunction D) : Prop :=
  V.poissonEquation ∧ V.transportEquation

theorem vorticity_stream_closed_from_evidence {D : AxiallySymmetricDomain} (V : VorticityStreamFunction D)
    (E : VorticityStreamEvidence V) : VorticityStreamClosed V :=
  And.intro E.poissonEquationClosed E.transportEquationClosed

end AxiallySymmetricSolutionsPdesCanonicalLaneLean
end HautevilleHouse