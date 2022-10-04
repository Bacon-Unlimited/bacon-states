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
# LOCATION: \Computer\Windows Components\Windows Update\ElevateNonAdmins_Title.sls
#
# SUPPORTED WINDOWS OS
# WU_SUPPORTED_Win2kSP3_Or_XPSP1_Through_Win81_or_Server2012R2
#
# This policy setting allows you to control whether non-administrative users will receive update notifications based on the "Configure Automatic Updates" policy setting.
# 
# If you enable this policy setting, Windows Automatic Update and Microsoft Update will include non-administrators when determining which logged-on user should receive update notifications. Non-administrative users will be able to install all optional, recommended, and important content for which they received a notification. Users will not see a User Account Control window and do not need elevated permissions to install these updates, except in the case of updates that contain User Interface , End User License Agreement , or Windows Update setting changes.
# 
# There are two situations where the effect of this setting depends on the operating system: Hide/Restore updates, and Cancel an install.
# 
# On XP: If you enable this policy setting, users will not see a User Account Control window and do not need elevated permissions to do either of these update-related tasks.
# 
# On Vista: If you enable this policy setting, users will not see a User Account Control window and do not need elevated permissions to do either of these tasks. If you do not enable this policy setting, then users will always see an Account Control window and require elevated permissions to do either of these tasks.
# 
# On Windows 7 : This policy setting has no effect. Users will always see an Account Control window and require elevated permissions to do either of these tasks.
# 
# On Windows 8 and Windows RT: This policy setting has no effect. Users will always see an Account Control window and require elevated permissions to do either of these tasks.
# 
# If you disable this policy setting, then only administrative users will receive update notifications.
# 
# Note: On Windows 8 and Windows RT this policy setting is enabled by default. In all prior versions of windows, it is disabled by default.
# 
# If the "Configure Automatic Updates" policy setting is disabled or is not configured, then the Elevate Non-Admin policy setting has no effect.
Allow non-administrators to receive update notifications:
  lgpo.set:
  - name: ElevateNonAdmins_Title
  - setting: Enabled
  - policy_class: Machine
