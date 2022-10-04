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
# LOCATION: \User\Windows Components\File Explorer\PromptRunasInstallNetPath.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# Prompts users for alternate logon credentials during network-based installations.
# 
# This setting displays the "Install Program As Other User" dialog box even when a program is being installed from files on a network computer across a local area network connection.
# 
# If you disable this setting or do not configure it, this dialog box appears only when users are installing programs from local media.
# 
# The "Install Program as Other User" dialog box prompts the current user for the user name and password of an administrator. This setting allows administrators who have logged on as regular users to install programs without logging off and logging on again using their administrator credentials.
# 
# If the dialog box does not appear, the installation proceeds with the current user's permissions. If these permissions are not sufficient, the installation might fail, or it might complete but not include all features. Or, it might appear to complete successfully, but the installed program might not operate correctly.
# 
# Note: If it is enabled, the "Do not request alternate credentials" setting takes precedence over this setting. When that setting is enabled, users are not prompted for alternate logon credentials on any installation.
Request credentials for network installations:
  lgpo.set:
  - name: PromptRunasInstallNetPath
  - setting: Enabled
  - policy_class: User
