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
# LOCATION: \User\System\Scripts\Run_Logoff_Script_Visible.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This policy setting displays the instructions in logoff scripts as they run.
# 
# Logoff scripts are batch files of instructions that run when the user logs off. By default, the system does not display the instructions in the logoff script.
# 
# If you enable this policy setting, the system displays each instruction in the logoff script as it runs. The instructions appear in a command window. This policy setting is designed for advanced users.
# 
# If you disable or do not configure this policy setting, the instructions are suppressed.
Display instructions in logoff scripts as they run:
  lgpo.set:
  - name: Run_Logoff_Script_Visible
  - setting: Enabled
  - policy_class: User
