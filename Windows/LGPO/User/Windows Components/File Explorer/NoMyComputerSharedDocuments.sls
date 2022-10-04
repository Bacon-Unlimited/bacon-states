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
# LOCATION: \User\Windows Components\File Explorer\NoMyComputerSharedDocuments.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPOnly
#
# This policy setting allows you to remove the Shared Documents folder from My Computer.
# 
# When a Windows client is in a workgroup, a Shared Documents icon appears in the File Explorer Web view under "Other Places" and also under "Files Stored on This Computer" in My Computer. Using this policy setting, you can choose not to have these items displayed.
# 
# If you enable this policy setting, the Shared Documents folder is not displayed in the Web view or in My Computer.
# 
# If you disable or do not configure this policy setting, the Shared Documents folder is displayed in Web view and also in My Computer when the client is part of a workgroup.
# 
# Note:  The ability to remove the Shared Documents folder via Group Policy is only available on Windows XP Professional.
Remove Shared Documents from My Computer:
  lgpo.set:
  - name: NoMyComputerSharedDocuments
  - setting: Enabled
  - policy_class: User
