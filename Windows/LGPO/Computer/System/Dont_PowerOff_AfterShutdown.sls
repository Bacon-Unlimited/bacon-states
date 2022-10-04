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
# LOCATION: \Computer\System\Dont_PowerOff_AfterShutdown.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPSP1
#
# This policy setting allows you to configure whether power is automatically turned off when Windows shutdown completes.  This setting does not affect Windows shutdown behavior when shutdown is manually selected using the Start menu or Task Manager user interfaces.  Applications such as UPS software may rely on Windows shutdown behavior.
# 
# This setting is only applicable when Windows shutdown is initiated by software programs invoking the Windows programming interfaces ExitWindowsEx() or InitiateSystemShutdown().
# 
# If you enable this policy setting, the computer system safely shuts down and remains in a powered state, ready for power to be safely removed.
# 
# If you disable or do not configure this policy setting, the computer system safely shuts down to a fully powered-off state.
Do not turn off system power after a Windows system shutdown has occurred.:
  lgpo.set:
  - name: Dont_PowerOff_AfterShutdown
  - setting: Enabled
  - policy_class: Machine
