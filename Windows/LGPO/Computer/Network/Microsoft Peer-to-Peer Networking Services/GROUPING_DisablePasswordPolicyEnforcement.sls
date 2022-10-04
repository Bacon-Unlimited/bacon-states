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
# LOCATION: \Computer\Network\Microsoft Peer-to-Peer Networking Services\GROUPING_DisablePasswordPolicyEnforcement.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# By default, when a Peer Group is created that allows for password-authentication (or the password for such a Group is changed), Peer Grouping validates that the password meets the password complexity requirements for the local system.  Thus, it will not allow any passwords to be used for a Peer Group that are weaker than what would be allowed for a login password.
# 
# This setting controls this validation behavior.  If set to 1, then this validation will not be performed and any password will be allowed.  If set to 0, the validation will be performed.
#       
Disable password strength validation for Peer Grouping:
  lgpo.set:
  - name: GROUPING_DisablePasswordPolicyEnforcement
  - setting: Enabled
  - policy_class: Machine
