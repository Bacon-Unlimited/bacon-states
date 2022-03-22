# windows:SUPPORTED_Windows_10_0_RS3
#
# This policy lets you specify the number of days before quality and feature updates are installed on devices automatically, and a grace period after which required restarts occur automatically.
# 
# Set deadlines for feature updates and quality updates to meet your compliance goals. Updates will be downloaded and installed as soon as they are offered and automatic restarts will be attempted outside of active hours. Once the deadline has passed, restarts will occur regardless of active hours, and users will not be able to reschedule. If the deadline is set to 0 days, the update will be installed immediately upon offering, but might not finish within the day due to device availability and network connectivity.
# 
# Set a grace period for feature updates and quality updates to guarantee users a minimum time to manage their restarts once updates are installed. Users will be able to schedule restarts during the grace period and Windows can still automatically restart outside of active hours if users choose not to schedule restarts. The grace period might not take effect if users already have more than the number of days set as grace period to manage their restart, based on deadline configurations.
# 
# You can set the device to delay restarting until both the deadline and grace period have expired.
# 
# If you disable or do not configure this policy, devices will get updates and will restart according to the default schedule.
# 
# This policy will override the following policies:
# 1.  Specify deadline before auto restart for update installation
# 2.  Specify Engaged restart transition and notification schedule for updates
# 3.  Always automatically restart at the scheduled time
# 4.  Configure Automatic Updates
#       
Specify deadlines for automatic updates and restarts:
  lgpo.set:
  - name: ComplianceDeadline
  - setting:
      ConfigureDeadlineForFeatureUpdates: enum-placeholder
      ConfigureDeadlineForQualityUpdates: enum-placeholder
      ConfigureDeadlineGracePeriod: enum-placeholder
      ConfigureDeadlineGracePeriodForFeatureUpdates: enum-placeholder
      ConfigureDeadlineNoAutoReboot: boolean-placeholder
  - policy_class: Machine
