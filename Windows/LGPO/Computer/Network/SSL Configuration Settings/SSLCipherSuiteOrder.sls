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
# LOCATION: \Computer\Network\SSL Configuration Settings\SSLCipherSuiteOrder.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting determines the cipher suites used by the Secure Socket Layer (SSL).
# 
# If you enable this policy setting, SSL cipher suites are prioritized in the order specified.
# 
# If you disable or do not configure this policy setting, default cipher suite order is used.
# 
# Link for all the cipherSuites: http://go.microsoft.com/fwlink/?LinkId=517265
# 
#       
SSL Cipher Suite Order:
  lgpo.set:
  - name: SSLCipherSuiteOrder
  - setting:
      Pol_SSLCipherSuiteOrder: text-placeholder
  - policy_class: Machine
