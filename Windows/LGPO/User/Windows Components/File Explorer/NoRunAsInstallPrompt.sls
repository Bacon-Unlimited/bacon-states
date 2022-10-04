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
# LOCATION: \User\Windows Components\File Explorer\NoRunAsInstallPrompt.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# Prevents users from submitting alternate logon credentials to install a program.
# 
# This setting suppresses the "Install Program As Other User" dialog box for local and network installations. This dialog box, which prompts the current user for the user name and password of an administrator, appears when users who are not administrators try to install programs locally on their computers. This setting allows administrators who have logged on as regular users to install programs without logging off and logging on again using their administrator credentials.
# 
# Many programs can be installed only by an administrator. If you enable this setting and a user does not have sufficient permissions to install a program, the installation continues with the current user's logon credentials. As a result, the installation might fail, or it might complete but not include all features. Or, it might appear to complete successfully, but the installed program might not operate correctly.
# 
# If you disable this setting or do not configure it, the "Install Program As Other User" dialog box appears whenever users install programs locally on the computer.
# 
# By default, users are not prompted for alternate logon credentials when installing programs from a network share. If enabled, this setting overrides the "Request credentials for network installations" setting.
Do not request alternate credentials:
  lgpo.set:
  - name: NoRunAsInstallPrompt
  - setting: Enabled
  - policy_class: User
