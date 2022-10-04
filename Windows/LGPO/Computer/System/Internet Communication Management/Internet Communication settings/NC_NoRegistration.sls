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
# LOCATION: \Computer\System\Internet Communication Management\Internet Communication settings\NC_NoRegistration.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPSP2_Or_WindowsNETSP1
#
# This policy setting specifies whether the Windows Registration Wizard connects to Microsoft.com for online registration.
# 
# If you enable this policy setting, it blocks users from connecting to Microsoft.com for online registration and users cannot register their copy of Windows online.
# 
# If you disable or do not configure this policy setting, users can connect to Microsoft.com to complete the online Windows Registration.
# 
# Note that registration is optional and involves submitting some personal information to Microsoft. However, Windows Product Activation is required but does not involve submitting any personal information (except the country/region you live in).
Turn off Registration if URL connection is referring to Microsoft.com:
  lgpo.set:
  - name: NC_NoRegistration
  - setting: Enabled
  - policy_class: Machine
