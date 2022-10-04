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
# LOCATION: \Computer\System\Kerberos\AlwaysSendCompoundId.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_6_3
#
# This policy setting controls whether a device always sends a compound authentication request when the resource domain requests compound identity.
# 
# Note: For a domain controller to request compound authentication, the policies "KDC support for claims, compound authentication, and Kerberos armoring" and "Request compound authentication" must be configured and enabled in the resource account domain. 
# 
# If you enable this policy setting and the resource domain requests compound authentication, devices that support compound authentication always send a compound authentication request. 
# 
# If you disable or do not configure this policy setting and the resource domain requests compound authentication, devices will send a non-compounded authentication request first then a compound authentication request when the service requests compound authentication.
# 
Always send compound authentication first:
  lgpo.set:
  - name: AlwaysSendCompoundId
  - setting: Enabled
  - policy_class: Machine
