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
