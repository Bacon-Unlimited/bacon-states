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
# LOCATION: \Computer\System\Kerberos\KdcProxyDisableServerRevocationCheck.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting allows you to disable revocation check for the SSL certificate of the targeted KDC proxy server.
# 
# If you enable this policy setting, revocation check for the SSL certificate of the KDC proxy server is ignored by the Kerberos client. This policy setting should only be used in troubleshooting KDC proxy connections. 
# Warning: When revocation check is ignored, the server represented by the certificate is not guaranteed valid. 
# 
# If you disable or do not configure this policy setting, the Kerberos client enforces the revocation check for the SSL certificate. The connection to the KDC proxy server is not established if the revocation check fails.
# 
Disable revocation checking for the SSL certificate of KDC proxy servers:
  lgpo.set:
  - name: KdcProxyDisableServerRevocationCheck
  - setting: Enabled
  - policy_class: Machine
