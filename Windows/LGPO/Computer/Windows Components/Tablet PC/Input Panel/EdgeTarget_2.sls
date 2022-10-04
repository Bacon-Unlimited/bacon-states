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
# LOCATION: \Computer\Windows Components\Tablet PC\Input Panel\EdgeTarget_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7ToVista
#
# Prevents Input Panel tab from appearing on the edge of the Tablet PC screen.
# 
# Tablet PC Input Panel is a Tablet PC accessory that enables you to use handwriting or an on-screen keyboard to enter text, symbols, numbers, or keyboard shortcuts.
# 
# If you enable this policy, Input Panel tab will not appear on the edge of the Tablet PC screen. Users will not be able to configure this setting in the Input Panel Options dialog box.
# 
# If you disable this policy, Input Panel tab will appear on the edge of the Tablet PC screen. Users will not be able to configure this setting in the Input Panel Options dialog box.
# 
# If you do not configure this policy, Input Panel tab will appear on the edge of the Tablet PC screen. Users will be able to configure this setting on the Opening tab in Input Panel Options.
# 
# Caution: If you enable both the Prevent Input Panel from appearing next to text entry areas policy and the Prevent Input Panel tab from appearing policy, and disable the Show Input Panel taskbar icon policy, the user will then have no way to access Input Panel.
Prevent Input Panel tab from appearing:
  lgpo.set:
  - name: EdgeTarget_2
  - setting: Enabled
  - policy_class: Machine
