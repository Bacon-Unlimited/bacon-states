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
# LOCATION: \Computer\System\Server Manager\DoNotLaunchInitialConfigurationTasks.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_WindowsServer2008OrWindowsServer2008R2Only
#
# This policy setting allows you to turn off the automatic display of the Initial Configuration Tasks window at logon on Windows Server 2008 and Windows Server 2008 R2. 
# 
# If you enable this policy setting, the Initial Configuration Tasks window is not displayed when an administrator logs on to the server. 
# 
# If you disable this policy setting, the Initial Configuration Tasks window is displayed when an administrator logs on to the server.
# 
# If you do not configure this policy setting, the Initial Configuration Tasks window is displayed when an administrator logs on to the server. However, if an administrator selects the "Do not show this window at logon" option, the window is not displayed on subsequent logons.
# 
Do not display Initial Configuration Tasks window automatically at logon:
  lgpo.set:
  - name: DoNotLaunchInitialConfigurationTasks
  - setting: Enabled
  - policy_class: Machine
