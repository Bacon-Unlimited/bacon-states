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
# LOCATION: \User\Network\Network Connections\NC_NewConnectionWizard.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_Win2kSP1_WindowsPreVista
#
# Determines whether users can use the New Connection Wizard, which creates new network connections.
# 
# If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Make New Connection icon does not appear in the Start Menu on in the Network Connections folder. As a result, users (including administrators) cannot start the New Connection Wizard.
# 
# Important: If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.
# 
# If you disable this setting or do not configure it, the Make New Connection icon appears in the Start menu and in the Network Connections folder for all users. Clicking the Make New Connection icon starts the New Connection Wizard.
# 
# Note: Changing this setting from Enabled to Not Configured does not restore the Make New Connection icon until the user logs off or on. When other changes to this setting are applied, the icon does not appear or disappear in the Network Connections folder until the folder is refreshed.
# 
# Note: This setting does not prevent users from using other programs, such as Internet Explorer, to bypass this setting.
Prohibit access to the New Connection Wizard:
  lgpo.set:
  - name: NC_NewConnectionWizard
  - setting: Enabled
  - policy_class: User
