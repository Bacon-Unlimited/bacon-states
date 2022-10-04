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
# LOCATION: \Computer\System\Scripts\Run_Startup_Script_Sync.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This policy setting lets the system run startup scripts simultaneously.
# 
# Startup scripts are batch files that run before the user is invited to log on. By default, the system waits for each startup script to complete before it runs the next startup script.
# 
# If you enable this policy setting, the system does not coordinate the running of startup scripts. As a result, startup scripts can run simultaneously.
# 
# If you disable or do not configure this policy setting, a startup cannot run until the previous script is complete.
# 
# Note: Starting with Windows Vista operating system, scripts that are configured to run asynchronously are no longer visible on startup, whether the ""Run startup scripts visible"" policy setting is enabled or not.
Run startup scripts asynchronously:
  lgpo.set:
  - name: Run_Startup_Script_Sync
  - setting: Enabled
  - policy_class: Machine
