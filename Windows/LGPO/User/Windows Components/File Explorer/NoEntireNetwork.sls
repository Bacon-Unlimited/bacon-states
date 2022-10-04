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
# LOCATION: \User\Windows Components\File Explorer\NoEntireNetwork.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# Removes all computers outside of the user's workgroup or local domain from lists of network resources in File Explorer and Network Locations.
# 
# If you enable this setting, the system removes the Entire Network option and the icons representing networked computers from Network Locations and from the browser associated with the Map Network Drive option.
# 
# This setting does not prevent users from viewing or connecting to computers in their workgroup or domain. It also does not prevent users from connecting to remote computers by other commonly used methods, such as by typing the share name in the Run dialog box or the Map Network Drive dialog box.
# 
# To remove computers in the user's workgroup or domain from lists of network resources, use the "No Computers Near Me in Network Locations" setting.
# 
# Note: It is a requirement for third-party applications with Windows 2000 or later certification to adhere to this setting.
No Entire Network in Network Locations:
  lgpo.set:
  - name: NoEntireNetwork
  - setting: Enabled
  - policy_class: User
