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
# LOCATION: \Computer\System\Kerberos\ClientRequireFast.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting controls whether a computer requires that Kerberos message exchanges be armored when communicating with a domain controller.
# 
# Warning: When a domain does not support Kerberos armoring by enabling "Support Dynamic Access Control and Kerberos armoring", then all authentication for all its users will fail from computers with this policy setting enabled.
# 
# If you enable this policy setting, the client computers in the domain enforce the use of Kerberos armoring in only authentication service (AS) and ticket-granting service (TGS) message exchanges with the domain controllers. 
# 
# Note: The Kerberos Group Policy "Kerberos client support for claims, compound authentication and Kerberos armoring" must also be enabled to support Kerberos armoring. 
# 
# If you disable or do not configure this policy setting, the client computers in the domain enforce the use of Kerberos armoring when possible as supported by the target domain.
# 
Fail authentication requests when Kerberos armoring is not available:
  lgpo.set:
  - name: ClientRequireFast
  - setting: Enabled
  - policy_class: Machine
