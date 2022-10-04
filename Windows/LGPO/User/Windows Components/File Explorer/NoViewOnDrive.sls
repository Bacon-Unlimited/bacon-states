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
# LOCATION: \User\Windows Components\File Explorer\NoViewOnDrive.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# Prevents users from using My Computer to gain access to the content of selected drives.
# 
# If you enable this setting, users can browse the directory structure of the selected drives in My Computer or File Explorer, but they cannot open folders and access the contents. Also, they cannot use the Run dialog box or the Map Network Drive dialog box to view the directories on these drives.
# 
# To use this setting, select a drive or combination of drives from the drop-down list. To allow access to all drive directories, disable this setting or select the "Do not restrict drives" option from the drop-down list.
# 
# Note: The icons representing the specified drives still appear in My Computer, but if users double-click the icons, a message appears explaining that a setting prevents the action.
# 
#  Also, this setting does not prevent users from using programs to access local and network drives. And, it does not prevent them from using the Disk Management snap-in to view and change drive characteristics.
# 
# Also, see the "Hide these specified drives in My Computer" setting.
Prevent access to drives from My Computer:
  lgpo.set:
  - name: NoViewOnDrive
  - setting:
      NoDrivesDropdown: enum-placeholder
  - policy_class: User
