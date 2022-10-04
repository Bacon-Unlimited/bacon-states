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
# LOCATION: \User\Desktop\NoMyDocumentsIcon.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# Removes most occurrences of the My Documents icon.
# 
# This setting removes the My Documents icon from the desktop, from File Explorer, from programs that use the File Explorer windows, and from the standard Open dialog box.
# 
# This setting does not prevent the user from using other methods to gain access to the contents of the My Documents folder.
# 
# This setting does not remove the My Documents icon from the Start menu. To do so, use the "Remove My Documents icon from Start Menu" setting.
# 
# Note: To make changes to this setting effective, you must log off from and log back on to Windows 2000 Professional.
Remove My Documents icon on the desktop:
  lgpo.set:
  - name: NoMyDocumentsIcon
  - setting: Enabled
  - policy_class: User
