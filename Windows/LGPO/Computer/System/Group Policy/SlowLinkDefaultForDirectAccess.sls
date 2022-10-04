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
# LOCATION: \Computer\System\Group Policy\SlowLinkDefaultForDirectAccess.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting allows an administrator to define the Direct Access connection to be considered a fast network connection for the purposes of applying and updating Group Policy.
# 
# When Group Policy detects the bandwidth speed of a Direct Access connection, the detection can sometimes fail to provide any bandwidth speed information. If Group Policy detects a bandwidth speed, Group Policy will follow the normal rules for evaluating if the Direct Access connection is a fast or slow network connection. If no bandwidth speed is detected, Group Policy will default to a slow network connection. This policy setting allows the administrator the option to override the default to slow network connection and instead default to using a fast network connection in the case that no network bandwidth speed is determined.
# 
# Note: When Group Policy detects a slow network connection, Group Policy will only process those client side extensions configured for processing across a slow link (slow network connection).
# 
# If you enable this policy, when Group Policy cannot determine the bandwidth speed across Direct Access, Group Policy will evaluate the network connection as a fast link and process all client side extensions.
# 
# If you disable this setting or do not configure it, Group Policy will evaluate the network connection as a slow link and process only those client side extensions configured to process over a slow link.
# 
#       
Configure Direct Access connections as a fast network connection:
  lgpo.set:
  - name: SlowLinkDefaultForDirectAccess
  - setting: Enabled
  - policy_class: Machine
