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
# LOCATION: \User\Windows Components\Internet Explorer\Security Features\Network Protocol Lockdown\Restricted Protocols Per Security Zone\IESF_NPLRest_TrustedSitesZone.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SP2
#
# For each zone, the Network Protocol Lockdown security restriction may be configured to prevent active content obtained through restricted protocols from running in an unsafe manner, either by prompting the user, or simply disabling the content. For each zone, this list of protocols may be configured here, and applies to all processes which have opted in to the security restriction.
# 
# If you enable this policy setting for a zone, this sets the list of protocols to be restricted if that zone is set to Prompt or Disable for "Allow active content over restricted protocols to access my computer."
# 
# If you disable or do not configure this policy setting for a zone, no protocols are restricted for that zone, regardless of the setting for "Allow active content over restricted protocols to access my computer."
# 
# Note.  If policy for a zone is set in both Computer Configuration and User Configuration, both lists of protocols will be restricted for that zone.
Trusted Sites Zone Restricted Protocols:
  lgpo.set:
  - name: IESF_NPLRest_TrustedSitesZone
  - setting:
      IESF_NPLRestrictionsList:
      - placeholder1
      - placeholder2
  - policy_class: User
