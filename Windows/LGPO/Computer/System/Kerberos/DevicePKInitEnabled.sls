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
# LOCATION: \Computer\System\Kerberos\DevicePKInitEnabled.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0
#
# Support for device authentication using certificate will require connectivity to a DC in the device account domain which supports certificate authentication for computer accounts. 
# 
# This policy setting allows you to set support for Kerberos to attempt authentication using the certificate for the device to the domain.
# 
# If you enable this policy setting, the devices credentials will be selected based on the following options:
# 
# Automatic: Device will attempt to authenticate using its certificate. If the DC does not support computer account authentication using certificates then authentication with password will be attempted.
# 
# Force: Device will always authenticate using its certificate. If a DC cannot be found which support computer account authentication using certificates then authentication will fail.
# 
# If you disable this policy setting, certificates will never be used.
# If you do not configure this policy setting, Automatic will be used.
# 
Support device authentication using certificate:
  lgpo.set:
  - name: DevicePKInitEnabled
  - setting:
      DevicePKInitBehavior: enum-placeholder
  - policy_class: Machine
