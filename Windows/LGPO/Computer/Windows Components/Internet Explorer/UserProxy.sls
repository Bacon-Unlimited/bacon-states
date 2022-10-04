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
# LOCATION: \Computer\Windows Components\Internet Explorer\UserProxy.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5
#
# Applies proxy settings to all users of the same computer.
# 
# If you enable this policy, users cannot set user-specific proxy settings. They must use the zones created for all users of the computer.
# 
# If you disable this policy or do not configure it, users of the same computer can establish their own proxy settings.
# 
# This policy is intended to ensure that proxy settings apply uniformly to the same computer and do not vary from user to user.
Make proxy settings per-machine (rather than per-user):
  lgpo.set:
  - name: UserProxy
  - setting: Enabled
  - policy_class: Machine
