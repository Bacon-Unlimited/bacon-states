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
# LOCATION: \Computer\Windows Components\Desktop Window Manager\DwmDisallowFlip3D_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7ToVista
#
# This policy setting allows you to configure the accessibility of the Flip 3D feature. Flip 3D allows the user to view items on the Windows desktop as they are being flipped through in three dimensions. 
# 
# If you enable this policy setting, Flip 3D is inaccessible. 
# 
# If you disable or do not configure this policy setting, Flip 3D is accessible, if desktop composition is turned on. When Windows Flip 3D is activated with the Windows+Tab keys, a visual version of the desktop is presented and items can be flipped through to select. 
# 
# Changing this policy setting requires a logoff for it to be applied.
Do not allow Flip3D invocation:
  lgpo.set:
  - name: DwmDisallowFlip3D_2
  - setting: Enabled
  - policy_class: Machine
