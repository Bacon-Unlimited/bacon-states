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
# LOCATION: \Computer\System\Net Logon\Netlogon_AllowNT4Crypto.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting controls whether the Net Logon service will allow the use of older cryptography algorithms that are used in Windows NT 4.0. The cryptography algorithms used in Windows NT 4.0 and earlier are not as secure as newer algorithms used in Windows 2000 or later, including this version of Windows.
# 
# By default, Net Logon will not allow the older cryptography algorithms to be used and will not include them in the negotiation of cryptography algorithms. Therefore, computers running Windows NT 4.0 will not be able to establish a connection to this domain controller.
#  
# If you enable this policy setting, Net Logon will allow the negotiation and use of older cryptography algorithms compatible with Windows NT 4.0. However, using the older algorithms represents a potential security risk.
# 
# If you disable this policy setting, Net Logon will not allow the negotiation and use of older cryptography algorithms. 
# 
# If you do not configure this policy setting, Net Logon will not allow the negotiation and use of older cryptography algorithms.
Allow cryptography algorithms compatible with Windows NT 4.0:
  lgpo.set:
  - name: Netlogon_AllowNT4Crypto
  - setting: Enabled
  - policy_class: Machine
