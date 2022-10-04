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
# LOCATION: \Computer\Windows Components\Task Scheduler\DragAndDrop_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# Prevents users from adding or removing tasks by moving or copying programs in the Scheduled Tasks folder.
# 
# This setting disables the Cut, Copy, Paste, and Paste Shortcut items on the context menu and the Edit menu in Scheduled Tasks. It also disables the drag-and-drop features of the Scheduled Tasks folder.
# 
# As a result, users cannot add new scheduled tasks by dragging, moving, or copying a document or program into the Scheduled tasks folder.
# 
# This setting does not prevent users from using other methods to create new tasks, and it does not prevent users from deleting tasks.
# 
# Note: This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.
Prohibit Drag-and-Drop:
  lgpo.set:
  - name: DragAndDrop_2
  - setting: Enabled
  - policy_class: Machine
