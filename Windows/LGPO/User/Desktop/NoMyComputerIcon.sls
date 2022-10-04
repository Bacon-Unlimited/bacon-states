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
# LOCATION: \User\Desktop\NoMyComputerIcon.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This setting hides Computer from the desktop and from the new Start menu. It also hides links to Computer in the Web view of all Explorer windows, and it hides Computer in the Explorer folder tree pane. If the user navigates into Computer via the "Up" button while this setting is enabled, they view an empty Computer folder. This setting allows administrators to restrict their users from seeing Computer in the shell namespace, allowing them to present their users with a simpler desktop environment.
# 
# If you enable this setting, Computer is hidden on the desktop, the new Start menu, the Explorer folder tree pane, and the Explorer Web views. If the user manages to navigate to Computer, the folder will be empty.
# 
# If you disable this setting, Computer is displayed as usual, appearing as normal on the desktop, Start menu, folder tree pane, and Web views, unless restricted by another setting.
# 
# If you do not configure this setting, the default is to display Computer as usual.
# 
# Note: In operating systems earlier than Microsoft Windows Vista, this policy applies to the My Computer icon. Hiding Computer and its contents does not hide the contents of the child folders of Computer. For example, if the users navigate into one of their hard drives, they see all of their folders and files there, even if this setting is enabled.
Remove Computer icon on the desktop:
  lgpo.set:
  - name: NoMyComputerIcon
  - setting: Enabled
  - policy_class: User
