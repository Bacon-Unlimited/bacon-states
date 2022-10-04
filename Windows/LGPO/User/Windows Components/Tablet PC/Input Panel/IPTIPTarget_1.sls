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
# LOCATION: \User\Windows Components\Tablet PC\Input Panel\IPTIPTarget_1.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7ToVista
#
# Prevents the Tablet PC Input Panel icon from appearing next to any text entry area in applications where this behavior is available. This policy applies only when using a tablet pen as an input device.
# 
# Tablet PC Input Panel is a Tablet PC accessory that enables you to use handwriting or an on-screen keyboard to enter text, symbols, numbers, or keyboard shortcuts.
# 
# If you enable this policy, Input Panel will never appear next to text entry areas when using a tablet pen as an input device. Users will not be able to configure this setting in the Input Panel Options dialog box.
# 
# If you disable this policy, Input Panel will appear next to any text entry area in applications where this behavior is available. Users will not be able to configure this setting in the Input Panel Options dialog box.
# 
# If you do not configure this policy, Input Panel will appear next to text entry areas in applications where this behavior is available. Users will be able to configure this setting on the Opening tab in Input Panel Options.
# 
# Caution: If you enable both the Prevent Input Panel from appearing next to text entry areas policy and the Prevent Input Panel tab from appearing policy, and disable the Show Input Panel taskbar icon policy, the user will then have no way to access Input Panel.
"For tablet pen input, don\u2019t show the Input Panel icon":
  lgpo.set:
  - name: IPTIPTarget_1
  - setting: Enabled
  - policy_class: User
