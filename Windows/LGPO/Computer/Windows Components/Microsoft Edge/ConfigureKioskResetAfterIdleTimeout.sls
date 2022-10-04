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
# LOCATION: \Computer\Windows Components\Microsoft Edge\ConfigureKioskResetAfterIdleTimeout.sls
#
# SUPPORTED WINDOWS OS
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
