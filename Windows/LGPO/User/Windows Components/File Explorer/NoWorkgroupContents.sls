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
# LOCATION: \User\Windows Components\File Explorer\NoWorkgroupContents.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# This policy setting allows you to remove computers in the user's workgroup and domain from lists of network resources in File Explorer and Network Locations.
# 
# If you enable this policy setting, the system removes the "Computers Near Me" option and the icons representing nearby computers from Network Locations. This policy setting also removes these icons from the Map Network Drive browser.
# 
# If you disable or do not configure this policy setting, computers in the user's workgroup and domain appear in lists of network resources in File Explorer and Network Locations.
# 
# This policy setting does not prevent users from connecting to computers in their workgroup or domain by other commonly used methods, such as typing the share name in the Run dialog box or the Map Network Drive dialog box.
# 
# To remove network computers from lists of network resources, use the "No Entire Network in Network Locations" policy setting.
# 
No Computers Near Me in Network Locations:
  lgpo.set:
  - name: NoWorkgroupContents
  - setting: Enabled
  - policy_class: User
