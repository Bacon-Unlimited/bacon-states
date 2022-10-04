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
# LOCATION: \Computer\Network\Background Intelligent Transfer Service (BITS)\BITS_MaxContentAge.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting limits the maximum age of files in the Background Intelligent Transfer Service (BITS) peer cache. In order to make the most efficient use of disk space, by default BITS removes any files in the peer cache that have not been accessed in the past 90 days.
# 
#           If you enable this policy setting, you can specify in days the maximum age of files in the cache. You can enter a value between 1 and 120 days.
# 
#           If you disable or do not configure this policy setting, files that have not been accessed for the past 90 days will be removed from the peer cache.
# 
#           Note: This policy setting has no effect if the "Allow BITS Peercaching" policy setting is disabled or not configured.
Limit the age of files in the BITS Peercache:
  lgpo.set:
  - name: BITS_MaxContentAge
  - setting:
      BITS_MaxContentAgeList: decimal-placeholder
  - policy_class: Machine
