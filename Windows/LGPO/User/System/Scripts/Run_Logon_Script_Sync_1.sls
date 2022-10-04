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
# LOCATION: \User\System\Scripts\Run_Logon_Script_Sync_1.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This policy setting directs the system to wait for logon scripts to finish running before it starts the File Explorer interface program and creates the desktop.
# 
# If you enable this policy setting, File Explorer does not start until the logon scripts have finished running. This policy setting ensures that logon script processing is complete before the user starts working, but it can delay the appearance of the desktop.
# 
# If you disable or do not configure this policy setting, the logon scripts and File Explorer are not synchronized and can run simultaneously.
# 
# This policy setting appears in the Computer Configuration and User Configuration folders. The policy setting set in Computer Configuration takes precedence over the policy setting set in User Configuration.
Run logon scripts synchronously:
  lgpo.set:
  - name: Run_Logon_Script_Sync_1
  - setting: Enabled
  - policy_class: User
