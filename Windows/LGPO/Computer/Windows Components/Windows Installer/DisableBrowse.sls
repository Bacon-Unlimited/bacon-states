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
# LOCATION: \Computer\Windows Components\Windows Installer\DisableBrowse.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# 
#         This policy setting prevents users from searching for installation files when they add features or components to an installed program.
# 
#         If you enable this policy setting, the Browse button beside the "Use feature from" list in the Windows Installer dialog box is disabled. As a result, users must select an installation file source from the "Use features from" list that the system administrator configures.
# 
#         This policy setting applies even when the installation is running in the user's security context.
# 
#         If you disable or do not configure this policy setting, the Browse button is enabled when an installation is running in the user's security context. But only system administrators can browse when an installation is running with elevated system privileges, such as installations offered on the desktop or in Add or Remove Programs.
# 
#         This policy setting affects Windows Installer only. It does not prevent users from selecting other browsers, such as File Explorer or Network Locations, to search for installation files.
# 
#         Also, see the "Enable user to browse for source while elevated" policy setting.
Remove browse dialog box for new source:
  lgpo.set:
  - name: DisableBrowse
  - setting: Enabled
  - policy_class: Machine
