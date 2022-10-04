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
# LOCATION: \User\Start Menu and Taskbar\NoWindowsUpdate.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows81To2k
#
# This policy setting allows you to remove links and access to Windows Update.
# 
# If you enable this policy setting, users are prevented from connecting to the Windows Update Web site.
# 
# Enabling this policy setting blocks user access to the Windows Update Web site at http://windowsupdate.microsoft.com. Also, the policy setting removes the Windows Update hyperlink from the Start menu and from the Tools menu in Internet Explorer.
# 
# Windows Update, the online extension of Windows, offers software updates to keep a users system up-to-date. The Windows Update Product Catalog determines any system files, security fixes, and Microsoft updates that users need and shows the newest versions available for download.
# 
# If you disable or do not configure this policy setting, the Windows Update hyperlink is available from the Start menu and from the Tools menu in Internet Explorer.
# 
# Also, see the "Hide the "Add programs from Microsoft" option" policy setting.
Remove links and access to Windows Update:
  lgpo.set:
  - name: NoWindowsUpdate
  - setting: Enabled
  - policy_class: User
