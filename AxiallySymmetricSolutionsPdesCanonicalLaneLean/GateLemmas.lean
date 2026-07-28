import AxiallySymmetricSolutionsPdesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace AxiallySymmetricSolutionsPdesCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end AxiallySymmetricSolutionsPdesCanonicalLaneLean
end HautevilleHouse