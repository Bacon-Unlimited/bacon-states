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
# LOCATION: \User\Windows Components\Internet Explorer\Offline Pages\NoRemovingChannels.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5_6
#
# Prevents users from disabling channel synchronization in Microsoft Internet Explorer.
# 
# Channels are Web sites that are automatically updated on your computer according to a schedule specified by the channel provider.
# 
# If you enable this policy, users cannot prevent channels from being synchronized.
# 
# If you disable this policy or do not configure it, users can disable the synchronization of channels.
# 
# This policy is intended to help administrators ensure that users' computers are being updated uniformly across their organization.
# 
# Note: This policy does not prevent users from removing active content from the desktop interface.
Disable removing channels:
  lgpo.set:
  - name: NoRemovingChannels
  - setting: Enabled
  - policy_class: User
