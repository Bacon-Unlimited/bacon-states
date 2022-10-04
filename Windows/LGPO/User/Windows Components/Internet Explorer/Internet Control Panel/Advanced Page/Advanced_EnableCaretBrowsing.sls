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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Control Panel\Advanced Page\Advanced_EnableCaretBrowsing.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8
#
# This policy setting allows you to turn Caret Browsing on or off. Caret Browsing allows users to browse to a webpage by using the keyboard to move the cursor. Caret Browsing supports standard text-editor functionality, such as using the Shift key to select text and copying a selection to the clipboard. This policy setting is particularly useful to users who do not use a mouse.
# 
# If you enable this policy setting, Caret Browsing is turned on.
# 
# If you disable this policy setting, Caret Browsing is turned off.
# 
# If you do not configure this policy setting, Caret Browsing support can be turned on or off through the registry.
Turn on Caret Browsing support:
  lgpo.set:
  - name: Advanced_EnableCaretBrowsing
  - setting: Enabled
  - policy_class: User
