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
# LOCATION: \User\Windows Components\Digital Locker\Digitalx_DiableApplication_TitleText_1.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# Specifies whether Digital Locker can run.
# 
# Digital Locker is a dedicated download manager associated with Windows Marketplace and a feature of Windows that can be used to manage and download products acquired and stored in the user's Windows Marketplace Digital Locker.
# 
# If you enable this setting, Digital Locker will not run.
# 
# If you disable or do not configure this setting, Digital Locker can be run.
Do not allow Digital Locker to run:
  lgpo.set:
  - name: Digitalx_DiableApplication_TitleText_1
  - setting: Enabled
  - policy_class: User
