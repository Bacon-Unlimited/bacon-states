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
# LOCATION: \Computer\Network\Network Connections\Windows Defender Firewall\Domain Profile\WF_Notifications_Name_1.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPSP2
#
# Prevents Windows Defender Firewall from displaying notifications to the user when a program requests that Windows Defender Firewall add the program to the program exceptions list.
# 
# If you enable this policy setting, Windows Defender Firewall prevents the display of these notifications.
# 
# If you disable this policy setting, Windows Defender Firewall allows the display of these notifications. In the Windows Defender Firewall component of Control Panel, the "Notify me when Windows Defender Firewall blocks a new program" check box is selected and administrators cannot clear it.
# 
# If you do not configure this policy setting, Windows Defender Firewall behaves as if the policy setting were disabled, except that in the Windows Defender Firewall component of Control Panel, the "Notify me when Windows Defender Firewall blocks a new program" check box is selected by default, and administrators can change it.
'Windows Defender Firewall: Prohibit notifications':
  lgpo.set:
  - name: WF_Notifications_Name_1
  - setting: Enabled
  - policy_class: Machine
