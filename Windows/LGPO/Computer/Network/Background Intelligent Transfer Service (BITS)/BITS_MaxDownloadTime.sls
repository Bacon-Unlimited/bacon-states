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
# LOCATION: \Computer\Network\Background Intelligent Transfer Service (BITS)\BITS_MaxDownloadTime.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting limits the amount of time that Background Intelligent Transfer Service (BITS) will take to download the files in a BITS job.
# 
#           The time limit applies only to the time that BITS is actively downloading files. When the cumulative download time exceeds this limit, the job is placed in the error state.
# 
#           By default BITS uses a maximum download time of 90 days (7,776,000 seconds).
# 
#           If you enable this policy setting, you can set the maximum job download time to a specified number of seconds.
# 
#           If you disable or do not configure this policy setting, the default value of 90 days (7,776,000 seconds) will be used.
Limit the maximum BITS job download time:
  lgpo.set:
  - name: BITS_MaxDownloadTime
  - setting:
      BITS_MaxDownloadSeconds: decimal-placeholder
  - policy_class: Machine
