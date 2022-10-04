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
# LOCATION: \User\Windows Components\Internet Explorer\Browser menus\Help_NoNetscapeHelp.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5_6
#
# Prevents users from displaying tips for users who are switching from Netscape.
# 
# If you enable this policy, the For Netscape Users command is removed from the Help menu.
# 
# If you disable this policy or do not configure it, users can display content about switching from Netscape by clicking the For Netscape Users command on the Help menu.
# 
# Caution: Enabling this policy does not remove the tips for Netscape users from the Microsoft Internet Explorer Help file.
'Help menu: Remove ''For Netscape Users'' menu option':
  lgpo.set:
  - name: Help_NoNetscapeHelp
  - setting: Enabled
  - policy_class: User
