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
