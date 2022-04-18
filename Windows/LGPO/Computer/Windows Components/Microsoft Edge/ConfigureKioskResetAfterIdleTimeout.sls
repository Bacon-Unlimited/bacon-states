# SUPPORTED_INTERNET_BROWSER_RS5
#
# You can configure Microsoft Edge to reset to the configured start experience after a specified amount of idle time. The reset timer begins after the last user interaction. Resetting to the configured start experience deletes the current users browsing data.
# 
# If enabled, you can set the idle time in minutes (0-1440). You must set the Configure kiosk mode policy to 1 and configure Microsoft Edge in assigned access as a single app for this policy to work. Once the idle time meets the time specified, a confirmation message prompts the user to continue, and if no user action, Microsoft Edge resets after 30 seconds.
# 
# If you set this policy to 0, Microsoft Edge does not use an idle timer.
# 
# If disabled or not configured, the default value is 5 minutes.
# 
# If you do not configure Microsoft Edge in assigned access, then this policy does not take effect.
Configure kiosk reset after idle timeout:
  lgpo.set:
  - name: ConfigureKioskResetAfterIdleTimeout
  - setting:
      ConfigureKioskResetAfterIdleTimeout_TextBox: decimal-placeholder
  - policy_class: Machine
