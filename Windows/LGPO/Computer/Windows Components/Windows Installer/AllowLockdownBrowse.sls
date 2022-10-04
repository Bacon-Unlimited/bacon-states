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
# LOCATION: \Computer\Windows Components\Windows Installer\AllowLockdownBrowse.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This policy setting allows users to search for installation files during privileged installations.
# 
# If you enable this policy setting, the Browse button in the "Use feature from" dialog box is enabled. As a result, users can search for installation files even when the installation program is running with elevated system privileges.
# 
# Because the installation is running with elevated system privileges, users can browse through directories that their own permissions would not allow.
# 
# This policy setting does not affect installations that run in the user's security context. Also, see the "Remove browse dialog box for new source" policy setting.
# 
# If you disable or do not configure this policy setting, by default, only system administrators can browse during installations with elevated privileges, such as installations offered on the desktop or displayed in Add or Remove Programs.
Allow users to browse for source while elevated:
  lgpo.set:
  - name: AllowLockdownBrowse
  - setting: Enabled
  - policy_class: Machine
