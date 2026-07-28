import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiallySymmetricSolutionsPdesCanonicalLaneLean

open AdmissibleClass

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.endpointSatisfied

def gateClosed (A : AdmissibleClass) : Prop :=
  A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end AxiallySymmetricSolutionsPdesCanonicalLaneLean
end HautevilleHouse