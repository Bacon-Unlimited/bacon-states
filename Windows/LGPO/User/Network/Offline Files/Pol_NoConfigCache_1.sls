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
# LOCATION: \User\Network\Offline Files\Pol_NoConfigCache_1.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# Prevents users from enabling, disabling, or changing the configuration of Offline Files.
# 
# This setting removes the Offline Files tab from the Folder Options dialog box. It also removes the Settings item from the Offline Files context menu and disables the Settings button on the Offline Files Status dialog box. As a result, users cannot view or change the options on the Offline Files tab or Offline Files dialog box.
# 
# This is a comprehensive setting that locks down the configuration you establish by using other settings in this folder.
# 
# This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.
# 
# Tip: This setting provides a quick method for locking down the default settings for Offline Files. To accept the defaults, just enable this setting. You do not have to disable any other settings in this folder.
Prohibit user configuration of Offline Files:
  lgpo.set:
  - name: Pol_NoConfigCache_1
  - setting: Enabled
  - policy_class: User
