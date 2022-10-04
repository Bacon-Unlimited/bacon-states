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
# LOCATION: \Computer\Network\Network Isolation\WF_NetIsolation_NeutralResources.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
#  This setting does not apply to desktop apps.
# 
# A comma-separated list of domain names that can be used as both work or personal resource.
# 
# For more information see: http://go.microsoft.com/fwlink/p/?LinkId=234043 
Domains categorized as both work and personal:
  lgpo.set:
  - name: WF_NetIsolation_NeutralResources
  - setting:
      WF_NetIsolation_NeutralResourcesBox: text-placeholder
  - policy_class: Machine
