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
# LOCATION: \Computer\Windows Components\Biometrics\Biometrics_EnableCredProv.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting determines whether users can log on or elevate User Account Control (UAC) permissions using biometrics.  By default, local users will be able to log on to the local computer, but the "Allow domain users to log on using biometrics" policy setting will need to be enabled for domain users to log on to the domain.
# 
# If you enable or do not configure this policy setting, all users can log on to a local Windows-based computer and can elevate permissions with UAC using biometrics.
# 
# If you disable this policy setting, biometrics cannot be used by any users to log on to a local Windows-based computer.
# 
# Note: Users who log on using biometrics should create a password recovery disk; this will prevent data loss in the event that someone forgets their logon credentials.
# 
Allow users to log on using biometrics:
  lgpo.set:
  - name: Biometrics_EnableCredProv
  - setting: Enabled
  - policy_class: Machine
