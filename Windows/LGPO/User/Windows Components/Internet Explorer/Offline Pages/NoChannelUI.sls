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
# LOCATION: \User\Windows Components\Internet Explorer\Offline Pages\NoChannelUI.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5_6
#
# Prevents users from viewing the Channel bar interface. Channels are Web sites that are automatically updated on their computer according to a schedule specified by the channel provider.
# 
# If you enable this policy, the Channel bar interface will be disabled, and users cannot select the Internet Explorer Channel Bar check box on the Web tab in the Display Properties dialog box.
# 
# If you disable this policy or do not configure it, users can view and subscribe to channels from the Channel bar interface.
Disable channel user interface completely:
  lgpo.set:
  - name: NoChannelUI
  - setting: Enabled
  - policy_class: User
