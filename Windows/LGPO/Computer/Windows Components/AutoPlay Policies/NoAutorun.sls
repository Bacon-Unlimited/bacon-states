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
# LOCATION: \Computer\Windows Components\AutoPlay Policies\NoAutorun.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting sets the default behavior for Autorun commands.
# 
#           Autorun commands are generally stored in autorun.inf files. They often launch the installation program or other routines.
# 
#           Prior to Windows Vista, when media containing an autorun command is inserted, the system will automatically execute the program without user intervention.
# 
#           This creates a major security concern as code may be executed without user's knowledge. The default behavior starting with Windows Vista is to prompt the user whether autorun command is to be run. The autorun command is represented as a handler in the Autoplay dialog.
# 
#           If you enable this policy setting, an Administrator can change the default Windows Vista or later behavior for autorun to:
# 
#           a) Completely disable autorun commands, or
#           b) Revert back to pre-Windows Vista behavior of automatically executing the autorun command.
# 
#           If you disable or not configure this policy setting, Windows Vista or later will prompt the user whether autorun command is to be run.
Set the default behavior for AutoRun:
  lgpo.set:
  - name: NoAutorun
  - setting:
      NoAutorun_Dropdown: enum-placeholder
  - policy_class: Machine
