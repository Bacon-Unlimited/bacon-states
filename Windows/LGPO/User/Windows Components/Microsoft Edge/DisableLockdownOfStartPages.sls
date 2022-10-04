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
# LOCATION: \User\Windows Components\Microsoft Edge\DisableLockdownOfStartPages.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_INTERNET_BROWSER_WIN10V1703
#
# You can configure Microsoft Edge to disable the lockdown of Start pages allowing users to change or customize their start pages.  To do this, you must also enable the Configure Start Pages or Configure Open Microsoft With policy. When enabled, all configured start pages are editable. Any Start page configured using the Configure Start pages policy is not locked down allowing users to edit their Start pages.
# 
# If disabled or not configured, the Start pages configured in the Configure Start Pages policy cannot be changed and remain locked down.
# 
# Supported devices: Domain-joined or MDM-enrolled
# Related policy:
# - Configure Start Pages
# - Configure Open Microsoft Edge With
Disable lockdown of Start pages:
  lgpo.set:
  - name: DisableLockdownOfStartPages
  - setting: Enabled
  - policy_class: User
