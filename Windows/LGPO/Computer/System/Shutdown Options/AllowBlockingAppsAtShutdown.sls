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
# LOCATION: \Computer\System\Shutdown Options\AllowBlockingAppsAtShutdown.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies whether Windows will allow console applications and GUI applications without visible top-level windows to block or cancel shutdown. By default, such applications are automatically terminated if they attempt to cancel shutdown or block it indefinitely.
# 
# If you enable this setting, console applications or GUI applications without visible top-level windows that block or cancel shutdown will not be automatically terminated during shutdown.
# 
# If you disable or do not configure this setting, these applications will be automatically terminated during shutdown, helping to ensure that Windows can shut down faster and more smoothly.
Turn off automatic termination of applications that block or cancel shutdown:
  lgpo.set:
  - name: AllowBlockingAppsAtShutdown
  - setting: Enabled
  - policy_class: Machine
