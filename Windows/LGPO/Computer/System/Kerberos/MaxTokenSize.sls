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
# LOCATION: \Computer\System\Kerberos\MaxTokenSize.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting allows you to set the value returned to applications which request the maximum size of the SSPI context token buffer size.
#               
# The size of the context token buffer determines the maximum size of SSPI context tokens an application expects and allocates. Depending upon authentication request processing and group memberships, the buffer might be smaller than the actual size of the SSPI context token. 
# 
# If you enable this policy setting, the Kerberos client or server uses the configured value, or the locally allowed maximum value, whichever is smaller.
# 
# If you disable or do not configure this policy setting, the Kerberos client or server uses the locally configured value or the default value. 
# 
# Note: This policy setting configures the existing MaxTokenSize registry value in HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa\Kerberos\Parameters, which was added in Windows XP and Windows Server 2003, with a default value of 12,000 bytes. Beginning with Windows 8 the default is 48,000 bytes. Due to HTTP's base64 encoding of authentication context tokens, it is not advised to set this value more than 48,000 bytes.
# 
# 
Set maximum Kerberos SSPI context token buffer size:
  lgpo.set:
  - name: MaxTokenSize
  - setting:
      MaxTokenSize: decimal-placeholder
  - policy_class: Machine
