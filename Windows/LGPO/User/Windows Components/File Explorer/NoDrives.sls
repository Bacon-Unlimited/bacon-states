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
# LOCATION: \User\Windows Components\File Explorer\NoDrives.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This policy setting allows you to hide these specified drives in My Computer.
# 
# This policy setting allows you to remove the icons representing selected hard drives from My Computer and File Explorer. Also, the drive letters representing the selected drives do not appear in the standard Open dialog box.
# 
# If you enable this policy setting, select a drive or combination of drives in the drop-down list.
# 
# Note: This policy setting removes the drive icons. Users can still gain access to drive contents by using other methods, such as by typing the path to a directory on the drive in the Map Network Drive dialog box, in the Run dialog box, or in a command window.
# 
# Also, this policy setting does not prevent users from using programs to access these drives or their contents. And, it does not prevent users from using the Disk Management snap-in to view and change drive characteristics.
# 
# If you disable or do not configure this policy setting, all drives are displayed, or select the "Do not restrict drives" option in the drop-down list.
# 
# Also, see the "Prevent access to drives from My Computer" policy setting.
Hide these specified drives in My Computer:
  lgpo.set:
  - name: NoDrives
  - setting:
      NoDrivesDropdown: enum-placeholder
  - policy_class: User
