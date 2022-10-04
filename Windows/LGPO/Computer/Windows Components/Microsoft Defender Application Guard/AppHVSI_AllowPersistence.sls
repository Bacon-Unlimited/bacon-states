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
# LOCATION: \Computer\Windows Components\Microsoft Defender Application Guard\AppHVSI_AllowPersistence.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_NOSERVER_ENTERPRISE_EDUCATION
#
# This policy setting allows you to decide whether data should persist across different sessions in Microsoft Defender Application Guard.
# 
# If you enable this setting, Application Guard saves user-downloaded files and other items (such as, cookies, Favorites, and so on) for use in future Application Guard sessions.
# 
# Note:
# If you enable this setting, you can still delete a user's data from a specific device using the Reset-ApplicationGuard PowerShell command. Running this command deletes all employee data, regardless of configuration, and can result in data loss for the employee.
# 
# If you disable or don't configure this setting, Application Guard deletes all user data within the Application Guard container.
#         
Allow data persistence for Microsoft Defender Application Guard:
  lgpo.set:
  - name: AppHVSI_AllowPersistence
  - setting: Enabled
  - policy_class: Machine
