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
# LOCATION: \Computer\Windows Components\Tablet PC\Hardware Buttons\PreventLaunchApp_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# Prevents the user from launching an application from a Tablet PC hardware button.
# 
# If you enable this policy, applications cannot be launched from a hardware button, and "Launch an application" is removed from the drop down menu for configuring button actions (in the Tablet PC Control Panel buttons tab).
# 
# If you disable this policy, applications can be launched from a hardware button.
# 
# If you do not configure this policy, applications can be launched from a hardware button.
Prevent launch an application:
  lgpo.set:
  - name: PreventLaunchApp_2
  - setting: Enabled
  - policy_class: Machine
