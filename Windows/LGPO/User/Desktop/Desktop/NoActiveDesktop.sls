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
# LOCATION: \User\Desktop\Desktop\NoActiveDesktop.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# Disables Active Desktop and prevents users from enabling it.
# 
# This setting prevents users from trying to enable or disable Active Desktop while a policy controls it.
# 
# If you disable this setting or do not configure it, Active Desktop is disabled by default, but users can enable it.
# 
# Note: If both the "Enable Active Desktop" setting and the "Disable Active Desktop" setting are enabled, the "Disable Active Desktop" setting is ignored. If the "Turn on Classic Shell" setting (in User Configuration\Administrative Templates\Windows Components\Windows Explorer) is enabled, Active Desktop is disabled, and both these policies are ignored.
Disable Active Desktop:
  lgpo.set:
  - name: NoActiveDesktop
  - setting: Enabled
  - policy_class: User
