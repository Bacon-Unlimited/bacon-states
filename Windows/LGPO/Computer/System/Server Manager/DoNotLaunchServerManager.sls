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
# LOCATION: \Computer\System\Server Manager\DoNotLaunchServerManager.sls
#
# SUPPORTED WINDOWS OS
# server:SUPPORTED_WindowsServer2008
#
# This policy setting allows you to turn off the automatic display of Server Manager at logon.
# 
# If you enable this policy setting, Server Manager is not displayed automatically when a user logs on to the server.
# 
# If you disable this policy setting, Server Manager is displayed automatically when a user logs on to the server.
# 
# If you do not configure this policy setting, Server Manager is displayed when a user logs on to the server. However, if the "Do not show me this console at logon" (Windows Server 2008 and Windows Server 2008 R2) or Do not start Server Manager automatically at logon (Windows Server 2012) option is selected, the console is not displayed automatically at logon.
# 
# Note: Regardless of the status of this policy setting, Server Manager is available from the Start menu or the Windows taskbar.
# 
Do not display Server Manager automatically at logon:
  lgpo.set:
  - name: DoNotLaunchServerManager
  - setting: Enabled
  - policy_class: Machine
