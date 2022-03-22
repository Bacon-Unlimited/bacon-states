# windows:SUPPORTED_WindowsVista
#
# Symbolic links can introduce vulnerabilities in certain applications. To mitigate this issue, you can selectively enable or disable the evaluation of these types of symbolic links:
# 
# Local Link to a Local Target
# Local Link to a Remote Target
# Remote Link to Remote Target
# Remote Link to Local Target
# 
# For further information please refer to the Windows Help section
# 
# NOTE: If this policy is Disabled or Not Configured, local administrators may select the types of symbolic links to be evaluated.
Selectively allow the evaluation of a symbolic link:
  lgpo.set:
  - name: SymlinkEvaluation
  - setting:
      SymLinkClassL2L: boolean-placeholder
      SymLinkClassL2R: boolean-placeholder
      SymLinkClassR2L: boolean-placeholder
      SymLinkClassR2R: boolean-placeholder
  - policy_class: Machine
