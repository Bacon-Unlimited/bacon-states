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
# LOCATION: \Computer\System\Distributed COM\Application Compatibility Settings\DCOMActivationSecurityCheckAllowLocalList.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPSP2
#
# Allows you to specify that local computer administrators can supplement the "Define Activation Security Check exemptions" list.
# 
# If you enable this policy setting, and DCOM does not find an explicit entry for a DCOM server application id (appid) in the "Define Activation Security Check exemptions" policy (if enabled), DCOM will look for an entry in the locally configured list.
# 
# If you disable this policy setting, DCOM will not look in the locally configured DCOM activation security check exemption list.
# 
# If you do not configure this policy setting, DCOM will only look in the locally configured exemption list if the "Define Activation Security Check exemptions" policy is not configured.
# 
Allow local activation security check exemptions:
  lgpo.set:
  - name: DCOMActivationSecurityCheckAllowLocalList
  - setting: Enabled
  - policy_class: Machine
