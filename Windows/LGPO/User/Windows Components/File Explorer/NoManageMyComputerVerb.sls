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
# LOCATION: \User\Windows Components\File Explorer\NoManageMyComputerVerb.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# Removes the Manage item from the File Explorer context menu. This context menu appears when you right-click File Explorer or My Computer.
# 
# The Manage item opens Computer Management (Compmgmt.msc), a console tool that includes many of the primary Windows 2000 administrative tools, such as Event Viewer, Device Manager, and Disk Management. You must be an administrator to use many of the features of these tools.
# 
# This setting does not remove the Computer Management item from the Start menu (Start, Programs, Administrative Tools, Computer Management), nor does it prevent users from using other methods to start Computer Management.
# 
# Tip: To hide all context menus, use the "Remove File Explorer's default context menu" setting.
Hides the Manage item on the File Explorer context menu:
  lgpo.set:
  - name: NoManageMyComputerVerb
  - setting: Enabled
  - policy_class: User
