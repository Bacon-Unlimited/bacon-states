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
# LOCATION: \Computer\System\Device Installation\DriverSearchPlaces_SearchOrderConfiguration.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting allows you to specify the order in which Windows searches source locations for device drivers. 
# 
# If you enable this policy setting, you can select whether Windows searches for drivers on Windows Update unconditionally, only if necessary, or not at all.
# 
# Note that searching always implies that Windows will attempt to search Windows Update exactly one time. With this setting, Windows will not continually search for updates. This setting is used to ensure that the best software will be found for the device, even if the network is temporarily available.
# 
# If the setting for searching only if needed is specified, then Windows will search for a driver only if a driver is not locally available on the system.
# 
# If you disable or do not configure this policy setting, members of the Administrators group can determine the priority order in which Windows searches source locations for device drivers.
Specify search order for device driver source locations:
  lgpo.set:
  - name: DriverSearchPlaces_SearchOrderConfiguration
  - setting:
      DriverSearchPlaces_SearchOrderConfiguration_dropdown: enum-placeholder
  - policy_class: Machine
