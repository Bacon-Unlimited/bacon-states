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
# LOCATION: \Computer\Windows Components\Internet Explorer\Security_HKLM_only.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5
#
# Applies security zone information to all users of the same computer. A security zone is a group of Web sites with the same security level.
# 
# If you enable this policy, changes that the user makes to a security zone will apply to all users of that computer.
# 
# If you disable this policy or do not configure it, users of the same computer can establish their own security zone settings.
# 
# This policy is intended to ensure that security zone settings apply uniformly to the same computer and do not vary from user to user.
# 
# Also, see the "Security zones: Do not allow users to change policies" policy.
'Security Zones: Use only machine settings ':
  lgpo.set:
  - name: Security_HKLM_only
  - setting: Enabled
  - policy_class: Machine
