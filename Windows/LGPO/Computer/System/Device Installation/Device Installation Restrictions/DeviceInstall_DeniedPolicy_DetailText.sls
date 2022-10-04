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
# LOCATION: \Computer\System\Device Installation\Device Installation Restrictions\DeviceInstall_DeniedPolicy_DetailText.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to display a custom message to users in a notification when a device installation is attempted and a policy setting prevents the installation.
# 
# If you enable this policy setting, Windows displays the text you type in the Detail Text box when a policy setting prevents device installation.
# 
# If you disable or do not configure this policy setting, Windows displays a default message when a policy setting prevents device installation.
Display a custom message when installation is prevented by a policy setting:
  lgpo.set:
  - name: DeviceInstall_DeniedPolicy_DetailText
  - setting:
      DeviceInstall_DeniedPolicy_DetailText_Text: text-placeholder
  - policy_class: Machine
