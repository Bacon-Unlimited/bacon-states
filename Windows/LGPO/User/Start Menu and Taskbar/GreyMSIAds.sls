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
# LOCATION: \User\Start Menu and Taskbar\GreyMSIAds.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7To2k
#
# Displays Start menu shortcuts to partially installed programs in gray text.
# 
# This setting makes it easier for users to distinguish between programs that are fully installed and those that are only partially installed.
# 
# Partially installed programs include those that a system administrator assigns using Windows Installer and those that users have configured for full installation upon first use.
# 
# If you disable this setting or do not configure it, all Start menu shortcuts appear as black text.
# 
# Note: Enabling this setting can make the Start menu slow to open.
Gray unavailable Windows Installer programs Start Menu shortcuts:
  lgpo.set:
  - name: GreyMSIAds
  - setting: Enabled
  - policy_class: User
