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
# LOCATION: \Computer\System\Device Installation\DriverSearchPlaces_SearchServerConfiguration.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting allows you to specify the search server that Windows uses to find updates for device drivers.
# 
# If you enable this policy setting, you can select whether Windows searches Windows Update (WU), searches a Managed Server, or a combination of both.
# 
# Note that if both are specified, then Windows will first search the Managed Server, such as a Windows Server Update Services (WSUS) server. Only if no update is found will Windows then also search Windows Update.
# 
# If you disable or do not configure this policy setting, members of the Administrators group can determine the server used in the search for device drivers.
#       
Specify the search server for device driver updates:
  lgpo.set:
  - name: DriverSearchPlaces_SearchServerConfiguration
  - setting:
      DriverSearchPlaces_SearchServerConfiguration_dropdown: enum-placeholder
  - policy_class: Machine
