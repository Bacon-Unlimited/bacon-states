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
# LOCATION: \User\System\Group Policy\DisableAutoADMUpdate.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# Prevents the system from updating the Administrative Templates source files automatically when you open the Group Policy Object Editor.  Administrators might want to use this if they are concerned about the amount of space used on the system volume of a DC.
# 
# By default, when you start the Group Policy Object Editor, a timestamp comparison is performed on the source files in the local %SYSTEMROOT%\inf directory and the source files stored in the GPO.  If the local files are newer, they are copied into the GPO.
# 
# Changing the status of this setting to Enabled will keep any source files from copying to the GPO.
# 
# Changing the status of this setting to Disabled will enforce the default behavior.  Files will always be copied to the GPO if they have a later timestamp.
# 
# NOTE: If the Computer Configuration policy setting, "Always use local ADM files for the Group Policy Object Editor" is enabled, the state of this setting is ignored and always treated as Enabled.
Turn off automatic update of ADM files:
  lgpo.set:
  - name: DisableAutoADMUpdate
  - setting: Enabled
  - policy_class: User
