import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiallySymmetricSolutionsPdesCanonicalLaneLean

structure AxiSymmetricAdmittedObject where
  domain : Type
  pdeSystem : Prop
  symmetricReduction : Prop
  conclusion : symmetricReduction

def AxiSymmetricWitnessClosed (O : AxiSymmetricAdmittedObject) : Prop :=
  O.symmetricReduction

structure AdmissibleClass where
  object : AxiSymmetricAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AxiSymmetricWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AxiallySymmetricSolutionsPdesCanonicalLaneLean
end HautevilleHouse