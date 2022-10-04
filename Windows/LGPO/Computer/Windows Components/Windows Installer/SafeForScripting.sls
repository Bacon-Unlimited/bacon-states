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
# LOCATION: \Computer\Windows Components\Windows Installer\SafeForScripting.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This policy setting allows Web-based programs to install software on the computer without notifying the user.
# 
# If you disable or do not configure this policy setting, by default, when a script hosted by an Internet browser tries to install a program on the system, the system warns users and allows them to select or refuse the installation.
# 
# If you enable this policy setting, the warning is suppressed and allows the installation to proceed.
# 
# This policy setting is designed for enterprises that use Web-based tools to distribute programs to their employees. However, because this policy setting can pose a security risk, it should be applied cautiously.
Prevent Internet Explorer security prompt for Windows Installer scripts:
  lgpo.set:
  - name: SafeForScripting
  - setting: Enabled
  - policy_class: Machine
