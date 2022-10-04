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
# LOCATION: \User\Control Panel\Printers\EnableDeviceControlUser.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0
#
# 
#           Determines whether Device Control Printing Restrictions are enforced for printing on this computer.
# 
#           By default, there are no restrictions to printing based on connection type or printer Make/Model.
# 
#           If you enable this setting, the computer will restrict printing to printer connections on the corporate network or approved USB-connected printers.
# 
#           If you disable this setting or do not configure it, there are no restrictions to printing based on connection type or printer Make/Model.
Enable Device Control Printing Restrictions:
  lgpo.set:
  - name: EnableDeviceControlUser
  - setting: Enabled
  - policy_class: User
