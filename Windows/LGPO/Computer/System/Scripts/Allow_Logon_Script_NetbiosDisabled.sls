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
# LOCATION: \Computer\System\Scripts\Allow_Logon_Script_NetbiosDisabled.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting allows user logon scripts to run when the logon cross-forest, DNS suffixes are not configured, and NetBIOS or WINS is disabled. This policy setting affects all user accounts interactively logging on to the computer.
# 
# If you enable this policy setting, user logon scripts run if NetBIOS or WINS is disabled during cross-forest logons without the DNS suffixes being configured.
# 
# If you disable or do not configure this policy setting, user account cross-forest, interactive logging cannot run logon scripts if NetBIOS or WINS is disabled, and the DNS suffixes are not configured.
Allow logon scripts when NetBIOS or WINS is disabled:
  lgpo.set:
  - name: Allow_Logon_Script_NetbiosDisabled
  - setting: Enabled
  - policy_class: Machine
