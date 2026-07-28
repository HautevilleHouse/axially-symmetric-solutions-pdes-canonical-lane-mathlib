import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AxiallySymmetricSolutionsPdesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace AxiallySymmetricSolutionsPdesCanonicalLaneLean

def ConstrainedAxiallySymmetricClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_axially_symmetric_endgame (A : AdmissibleClass) :
    ConstrainedAxiallySymmetricClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AxiallySymmetricSolutionsPdesCanonicalLaneLean
end HautevilleHouse