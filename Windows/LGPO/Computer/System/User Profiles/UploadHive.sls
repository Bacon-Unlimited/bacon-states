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
# LOCATION: \Computer\System\User Profiles\UploadHive.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting sets the schedule for background uploading of a roaming user profile's registry file (ntuser.dat). This policy setting controls only the uploading of a roaming user profile's registry file (other user data and regular profiles are not be uploaded) and uploads it only if the user is logged on. This policy setting does not stop the roaming user profile's registry file from being uploaded at user logoff.
# 
# If "Run at set interval" is chosen, then an interval must be set, with a value of 1-720 hours. Once set, Windows uploads the profile's registry file at the specified interval after the user logs on.  For example, with a value of 6 hours, the registry file of the roaming user profile is uploaded to the server every six hours while the user is logged on.
# 
# If "Run at specified time of day" is chosen, then a time of day must be specified. Once set, Windows uploads the registry file  at the same time every day, as long as the user is logged on.
# 
# For both scheduling options, there is a random one hour delay attached per-trigger to avoid overloading the server with simultaneous uploads. For example, if the settings dictate that the user's registry file is to be uploaded at 6pm, it will actually upload at a random time between 6pm and 7pm.
# 
# Note:  If "Run at set interval" is selected, the "Time of day" option is disregarded. Likewise, if "Run at set time of day" is chosen, the "Interval (hours)" option is disregarded.
# 
# If you enable this policy setting,  Windows uploads the registry file of the user's roaming user profile in the background according to the schedule set here while the user is logged on. Regular profiles are not affected.
# 
# If this setting is disabled or not configured, the registry file for a roaming user profile will not be uploaded in the background while the user is logged on.
#       
Set the schedule for background upload of a roaming user profile's registry file while user is logged on:
  lgpo.set:
  - name: UploadHive
  - setting:
      UploadHiveInterval: decimal-placeholder
      UploadHiveMethod: enum-placeholder
      UploadHiveTime: enum-placeholder
  - policy_class: Machine
