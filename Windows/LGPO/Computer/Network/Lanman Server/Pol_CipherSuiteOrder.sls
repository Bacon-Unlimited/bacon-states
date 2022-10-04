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
# LOCATION: \Computer\Network\Lanman Server\Pol_CipherSuiteOrder.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0
#
# This policy setting determines the cipher suites used by the SMB server.
# 
# If you enable this policy setting, cipher suites are prioritized in the order specified.
# 
# If you enable this policy setting and do not specify at least one supported cipher suite, or if you disable or do not configure this policy setting, the default cipher suite order is used.
# 
# SMB 3.11 cipher suites:
# 
# AES_128_GCM
# AES_128_CCM
# 
# SMB 3.0 and 3.02 cipher suites:
# 
# AES_128_CCM
# 
# How to modify this setting:
# 
# Arrange the desired cipher suites in the edit box, one cipher suite per line, in order from most to least preferred, with the most preferred cipher suite at the top. Remove any cipher suites you don't want to use.
# 
# Note: When configuring this security setting, changes will not take effect until you restart Windows.
Cipher suite order:
  lgpo.set:
  - name: Pol_CipherSuiteOrder
  - setting:
      MultiText_CipherSuiteOrder: multiText-placeholder
  - policy_class: Machine
