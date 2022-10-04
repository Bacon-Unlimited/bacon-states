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
# LOCATION: \Computer\Windows Components\Windows Logon Options\DisplayLastLogonInfoDescription.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting controls whether or not the system displays information about previous logons and logon failures to the user.
# 
# For local user accounts and domain user accounts in domains of at least a Windows Server 2008 functional level, if you enable this setting, a message appears after the user logs on that displays the date and time of the last successful logon by that user, the date and time of the last unsuccessful logon attempted with that user name, and the number of unsuccessful logons since the last successful logon by that user. This message must be acknowledged by the user before the user is presented with the Microsoft Windows desktop.
# 
# For domain user accounts in Windows Server 2003, Windows 2000 native, or Windows 2000 mixed functional level domains, if you enable this setting, a warning message will appear that Windows could not retrieve the information and the user will not be able to log on. Therefore, you should not enable this policy setting if the domain is not at the Windows Server 2008 domain functional level.
# 
# If you disable or do not configure this setting, messages about the previous logon or logon failures are not displayed.
Display information about previous logons during user logon:
  lgpo.set:
  - name: DisplayLastLogonInfoDescription
  - setting: Enabled
  - policy_class: Machine
