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
# LOCATION: \Computer\Network\Lanman Server\Pol_HonorCipherSuiteOrder.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0
#
# This policy setting determines how the SMB server selects a cipher suite when negotiating a new connection with an SMB client.
# 
# If you enable this policy setting, the SMB server will select the cipher suite it most prefers from the list of client-supported cipher suites, ignoring the client's preferences.
# 
# If you disable or do not configure this policy setting, the SMB server will select the cipher suite the client most prefers from the list of server-supported cipher suites.
# 
# Note: When configuring this security setting, changes will not take effect until you restart Windows.
Honor cipher suite order:
  lgpo.set:
  - name: Pol_HonorCipherSuiteOrder
  - setting: Enabled
  - policy_class: Machine
