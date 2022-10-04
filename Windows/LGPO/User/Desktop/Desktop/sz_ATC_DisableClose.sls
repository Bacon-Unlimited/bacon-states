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
# LOCATION: \User\Desktop\Desktop\sz_ATC_DisableClose.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# Prevents users from removing Web content from their Active Desktop.
# 
# In Active Desktop, you can add items to the desktop but close them so they are not displayed.
# 
# If you enable this setting, items added to the desktop cannot be closed; they always appear on the desktop. This setting removes the check boxes from items on the Web tab in Display in Control Panel.
# 
# Note: This setting does not prevent users from deleting items from their Active Desktop.
Prohibit closing items:
  lgpo.set:
  - name: sz_ATC_DisableClose
  - setting: Enabled
  - policy_class: User
