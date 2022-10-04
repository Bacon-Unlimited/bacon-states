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
# LOCATION: \User\Network\Network Connections\NC_AdvancedSettings.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_Win2kSP1_WindowsPreVista
#
# Determines whether the Advanced Settings item on the Advanced menu in Network Connections is enabled for administrators.
# 
# The Advanced Settings item lets users view and change bindings and view and change the order in which the computer accesses connections, network providers, and print providers.
# 
# If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Advanced Settings item is disabled for administrators.
# 
# Important: If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.
# 
# If you disable this setting or do not configure it, the Advanced Settings item is enabled for administrators.
# 
# Note: Nonadministrators are already prohibited from accessing the Advanced Settings dialog box, regardless of this setting.
Prohibit access to the Advanced Settings item on the Advanced menu:
  lgpo.set:
  - name: NC_AdvancedSettings
  - setting: Enabled
  - policy_class: User
