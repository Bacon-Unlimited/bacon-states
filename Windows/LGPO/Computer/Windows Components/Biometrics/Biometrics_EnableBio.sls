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
# LOCATION: \Computer\Windows Components\Biometrics\Biometrics_EnableBio.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting allows or prevents the Windows Biometric Service to run on this computer.
#         
# If you enable or do not configure this policy setting, the Windows Biometric Service is available, and users can run applications that use biometrics on Windows. If you want to enable the ability to log on with biometrics, you must also configure the "Allow users to log on using biometrics" policy setting.
# 
# If you disable this policy setting, the Windows Biometric Service is unavailable, and users cannot use any biometric feature in Windows.
# 
# Note: Users who log on using biometrics should create a password recovery disk; this will prevent data loss in the event that someone forgets their logon credentials.
#       
Allow the use of biometrics:
  lgpo.set:
  - name: Biometrics_EnableBio
  - setting: Enabled
  - policy_class: Machine
