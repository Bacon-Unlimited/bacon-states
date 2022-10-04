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
# LOCATION: \Computer\Windows Components\Biometrics\Biometrics_FUSTimeout.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting specifies the number of seconds a pending fast user switch event will remain active before the switch is initiated.  By default, a fast user switch event is active for 10 seconds before becoming inactive.
# 
# If you enable this policy setting, you can configure the fast user switch event timeout to specify the number of seconds the event remains active. This value cannot exceed 60 seconds.
# 
# If you disable or do not configure this policy setting, a default value of 10 seconds is used for fast-user switch event timeouts.
# 
Specify timeout for fast user switching events:
  lgpo.set:
  - name: Biometrics_FUSTimeout
  - setting:
      Pol_Biometrics_FUSTimeout: decimal-placeholder
  - policy_class: Machine
