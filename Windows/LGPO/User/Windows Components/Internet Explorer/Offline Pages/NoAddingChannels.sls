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
# LOCATION: \User\Windows Components\Internet Explorer\Offline Pages\NoAddingChannels.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5_6
#
# Prevents users from adding channels to Internet Explorer.
# 
# Channels are Web sites that are updated automatically on your computer, according to a schedule specified by the channel provider.
# 
# If you enable this policy, the Add Active Channel button, which appears on a channel that users haven't yet subscribed to, will be disabled. Users also cannot add content that is based on a channel, such as some of the Active Desktop items from Microsoft's Active Desktop Gallery, to their desktop.
# 
# If you disable this policy or do not configure it, users can add channels to the Channel bar or to their desktop.
# 
# Note: Most channel providers use the words Add Active Channel for this option; however, a few use different words, such as Subscribe.
Disable adding channels:
  lgpo.set:
  - name: NoAddingChannels
  - setting: Enabled
  - policy_class: User
