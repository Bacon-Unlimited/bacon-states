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
# LOCATION: \Computer\Windows Components\Tablet PC\Input Panel\ScratchOut_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVistaOnly
#
# 
#         Turns off both the more tolerant scratch-out gestures that were added in Windows Vista and the Z-shaped scratch-out gesture that was available in Microsoft Windows XP Tablet PC Edition.
# 
#         The tolerant gestures let users scratch out ink in Input Panel by using strikethrough and other scratch-out gesture shapes.
# 
#         Tablet PC Input Panel is a Tablet PC accessory that enables you to use handwriting or an on-screen keyboard to enter text, symbols, numbers, or keyboard shortcuts.
# 
#         If you enable this policy and choose All from the drop-down menu, no scratch-out gestures will be available in Input Panel. Users will not be able to configure this setting in the Input Panel Options dialog box.
# 
#         If you enable this policy and choose Tolerant," users will be able to use the Z-shaped scratch-out gesture that was available in Microsoft Windows XP Tablet PC Edition. Users will not be able to configure this setting in the Input Panel Options dialog box.
# 
#         If you enable this policy and choose None, users will be able to use both the tolerant scratch-out gestures and the Z-shaped scratch-out gesture. Users will not be able to configure this setting in the Input Panel Options dialog box.
# 
#         If you disable this policy, users will be able to use both the tolerant scratch-out gestures and the Z-shaped scratch-out gesture. Users will not be able to configure this setting in the Input Panel Options dialog box.
# 
#         If you do not configure this policy, users will be able to use both the tolerant scratch-out gestures and the Z-shaped scratch-out gesture. Users will be able to configure this setting on the Gestures tab in Input Panel Options.
#       
Turn off tolerant and Z-shaped scratch-out gestures:
  lgpo.set:
  - name: ScratchOut_2
  - setting:
      ScratchOut: enum-placeholder
  - policy_class: Machine
