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
# LOCATION: \Computer\System\Net Logon\Netlogon_AvoidPdcOnWan.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting defines whether a domain controller (DC) should attempt to verify the password provided by a client with the PDC emulator if the DC failed to validate the password.
# 
# Contacting the PDC emulator is useful in case the clients password was recently changed and did not propagate to the DC yet. Users may want to disable this feature if the PDC emulator is located over a slow WAN connection.
# 
# If you enable this policy setting, the DCs to which this policy setting applies will attempt to verify a password with the PDC emulator if the DC fails to validate the password.
# 
# If you disable this policy setting, the DCs will not attempt to verify any passwords with the PDC emulator. 
# 
# If you do not configure this policy setting, it is not applied to any DCs.
Contact PDC on logon failure:
  lgpo.set:
  - name: Netlogon_AvoidPdcOnWan
  - setting: Enabled
  - policy_class: Machine
