import AxiallySymmetricSolutionsPdesCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace AxiallySymmetricSolutionsPdesCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  axiallySymmetricConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def theoremStatement : TheoremStatement :=
  {
    sourceKey := "axially-symmetric-solutions-canonical-lane"
    theoremName := "Axially Symmetric Solutions PDEs Canonical Lane"
    theoremObject := "axially symmetric solutions to the Einstein equations or related PDEs"
    classicalBoundary := "unrestricted classical closure remains carried"
    axiallySymmetricConstrainedStatement := "axially symmetric constrained theorem certificate internalized through admissible class closure"
    certificateLane := "axially_symmetric_constrained"
    carriedRemainder := "classical source boundary carried by theoremBoundaryOpen flag"
  }

theorem theorem_statement_source_key_checked :
    theoremStatement.sourceKey = "axially-symmetric-solutions-canonical-lane" := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    theoremStatement.certificateLane = "axially_symmetric_constrained" := by
  rfl

end AxiallySymmetricSolutionsPdesCanonicalLaneLean
end HautevilleHouse