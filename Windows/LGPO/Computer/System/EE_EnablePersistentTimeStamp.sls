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
# LOCATION: \Computer\System\EE_EnablePersistentTimeStamp.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsNET
#
# This policy setting allows the system to detect the time of unexpected shutdowns by writing the current time to disk on a schedule controlled by the Timestamp Interval.
# 
# If you enable this policy setting, you are able to specify how often the Persistent System Timestamp is refreshed and subsequently written to the disk. You can specify the Timestamp Interval in seconds.
# 
# If you disable this policy setting, the Persistent System Timestamp is turned off and the timing of unexpected shutdowns is not recorded.
# 
# If you do not configure this policy setting, the Persistent System Timestamp is refreshed according the default, which is every 60 seconds beginning with Windows Server 2003.
# 
# Note: This feature might interfere with power configuration settings that turn off hard disks after a period of inactivity. These power settings may be accessed in the Power Options Control Panel.
Enable Persistent Time Stamp:
  lgpo.set:
  - name: EE_EnablePersistentTimeStamp
  - setting:
      EE_EnablePersistentTimeStamp_Desc4: decimal-placeholder
  - policy_class: Machine
