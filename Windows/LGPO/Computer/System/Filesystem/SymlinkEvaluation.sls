####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \Computer\System\Filesystem\SymlinkEvaluation.sls
#
# SUPPORTED WINDOWS OS
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
