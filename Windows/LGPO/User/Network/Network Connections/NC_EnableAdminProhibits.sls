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
# LOCATION: \User\Network\Network Connections\NC_EnableAdminProhibits.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsNET_XP
#
# Determines whether settings that existed in Windows 2000 Server family will apply to Administrators.
# 
# The set of Network Connections group settings that existed in Windows 2000 Professional also exists in Windows XP Professional. In Windows 2000 Professional, all of these settings had the ability to prohibit the use of certain features from Administrators.
# 
# By default, Network Connections group settings in Windows XP Professional do not have the ability to prohibit the use of features from Administrators.
# 
# If you enable this setting, the Windows XP settings that existed in Windows 2000 Professional will have the ability to prohibit Administrators from using certain features. These settings are "Ability to rename LAN connections or remote access connections available to all users", "Prohibit access to properties of components of a LAN connection", "Prohibit access to properties of components of a remote access connection", "Ability to access TCP/IP advanced configuration", "Prohibit access to the Advanced Settings Item on the Advanced Menu", "Prohibit adding and removing components for a LAN or remote access connection", "Prohibit access to properties of a LAN connection", "Prohibit Enabling/Disabling components of a LAN connection", "Ability to change properties of an all user remote access connection", "Prohibit changing properties of a private remote access connection", "Prohibit deletion of remote access connections", "Ability to delete all user remote access connections", "Prohibit connecting and disconnecting a remote access connection", "Ability to Enable/Disable a LAN connection", "Prohibit access to the New Connection Wizard", "Prohibit renaming private remote access connections", "Prohibit access to the Remote Access Preferences item on the Advanced menu", "Prohibit viewing of status for an active connection". When this setting is enabled, settings that exist in both Windows 2000 Professional and Windows XP Professional behave the same for administrators.
# 
# If you disable this setting or do not configure it, Windows XP settings that existed in Windows 2000 will not apply to administrators.
# 
# Note: This setting is intended to be used in a situation in which the Group Policy object that these settings are being applied to contains both Windows 2000 Professional and Windows XP Professional computers, and identical Network Connections policy behavior is required between all Windows 2000 Professional and Windows XP Professional computers.
Enable Windows 2000 Network Connections settings for Administrators:
  lgpo.set:
  - name: NC_EnableAdminProhibits
  - setting: Enabled
  - policy_class: User
