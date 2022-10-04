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
# LOCATION: \Computer\System\Logon\DisableExplorerRunOnceLegacy_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This policy setting ignores customized run-once lists.
# 
# You can create a customized list of additional programs and documents that are started automatically the next time the system starts (but not thereafter). These programs are added to the standard list of programs and services that the system starts.
# 
# If you enable this policy setting, the system ignores the run-once list.
# 
# If you disable or do not configure this policy setting, the system runs the programs in the run-once list.
# 
# This policy setting appears in the Computer Configuration and User Configuration folders. If both policy settings are configured, the policy setting in Computer Configuration takes precedence over the policy setting in User Configuration.
# 
# Note: Customized run-once lists are stored in the registry in HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunOnce.
# 
# Also, see the ""Do not process the legacy run list"" policy setting.
Do not process the run once list:
  lgpo.set:
  - name: DisableExplorerRunOnceLegacy_2
  - setting: Enabled
  - policy_class: Machine
