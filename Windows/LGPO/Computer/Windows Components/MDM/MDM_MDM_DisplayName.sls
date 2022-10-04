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
# LOCATION: \Computer\Windows Components\MDM\MDM_MDM_DisplayName.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# This policy setting specifies whether Mobile Device Management (MDM) Enrollment is allowed. When MDM is enabled, it allows the user to have the computer remotely managed by a MDM Server.  
# 
# If you do not configure this policy setting, MDM Enrollment will be enabled. 
# 
# If you enable this policy setting, MDM Enrollment will be disabled for all users. It will not unenroll existing MDM enrollments.
# 
# If you disable this policy setting, MDM Enrollment will be enabled for all users.
#       
Disable MDM Enrollment:
  lgpo.set:
  - name: MDM_MDM_DisplayName
  - setting: Enabled
  - policy_class: Machine
