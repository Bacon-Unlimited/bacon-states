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
# LOCATION: \Computer\Windows Components\Windows Update\DetectionFrequency_Title.sls
#
# SUPPORTED WINDOWS OS
# WU_SUPPORTED_Win2kSP3_Or_XPSP1_NoWinRT
#
# Specifies the hours that Windows will use to determine how long to wait before checking for available updates. The exact wait time is a sum of the specific value and a random variant of 0-4 hours.
# 
#         If the status is set to Enabled, Windows will check for available updates at the specified interval.
# 
#         If the status is set to Disabled or Not Configured, Windows will check for available updates at the default interval of 22 hours.
# 
#         Note: The "Specify intranet Microsoft update service location" setting must be enabled for this policy to have effect.
# 
#         Note: If the "Configure Automatic Updates" policy is disabled, this policy has no effect.
# 
#         Note: This policy is not supported on Windows RT. Setting this policy will not have any effect on Windows RT PCs.
Automatic Updates detection frequency:
  lgpo.set:
  - name: DetectionFrequency_Title
  - setting:
      DetectionFrequency_Hour2: decimal-placeholder
  - policy_class: Machine
