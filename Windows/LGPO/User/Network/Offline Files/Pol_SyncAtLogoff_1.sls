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
# LOCATION: \User\Network\Offline Files\Pol_SyncAtLogoff_1.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# Determines whether offline files are fully synchronized when users log off.
# 
# This setting also disables the "Synchronize all offline files before logging off" option on the Offline Files tab. This prevents users from trying to change the option while a setting controls it.
# 
# If you enable this setting, offline files are fully synchronized. Full synchronization ensures that offline files are complete and current.
# 
# If you disable this setting, the system only performs a quick synchronization. Quick synchronization ensures that files are complete, but does not ensure that they are current.
# 
# If you do not configure this setting, the system performs a quick synchronization by default, but users can change this option.
# 
# This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.
# 
# Tip: To change the synchronization method without changing a setting, in Windows Explorer, on the Tools menu, click Folder Options, click the Offline Files tab, and then select the "Synchronize all offline files before logging off" option.
Synchronize all offline files before logging off:
  lgpo.set:
  - name: Pol_SyncAtLogoff_1
  - setting: Enabled
  - policy_class: User
