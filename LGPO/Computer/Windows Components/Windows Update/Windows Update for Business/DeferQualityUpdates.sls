# windows:SUPPORTED_Windows_10_0_NOARM
#
# Enable this policy to specify when to receive quality updates.
# 
# You can defer receiving quality updates for up to 30 days.
# 
# To prevent quality updates from being received on their scheduled time, you can temporarily pause quality updates. The pause will remain in effect for 35 days or until you clear the start date field.
# 
# To resume receiving Quality Updates which are paused, clear the start date field.
# 
# If you disable or do not configure this policy, Windows Update will not alter its behavior.
Select when Quality Updates are received:
  lgpo.set:
  - name: DeferQualityUpdates
  - setting:
      DeferQualityUpdatesPeriodId: decimal-placeholder
      PauseQualityUpdatesStartId: text-placeholder
  - policy_class: Machine
