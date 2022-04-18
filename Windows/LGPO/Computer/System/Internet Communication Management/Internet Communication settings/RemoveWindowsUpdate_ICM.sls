# windows:SUPPORTED_WindowsUpdate
#
# This policy setting allows you to remove access to Windows Update.
# 
# If you enable this policy setting, all Windows Update features are removed. This includes blocking access to the Windows Update website at http://windowsupdate.microsoft.com, from the Windows Update hyperlink on the Start menu, and also on the Tools menu in Internet Explorer. Windows automatic updating is also disabled; you will neither be notified about nor will you receive critical updates from Windows Update. This policy setting also prevents Device Manager from automatically installing driver updates from the Windows Update website.
# 
# If you disable or do not configure this policy setting, users can access the Windows Update website and enable automatic updating to receive notifications and critical updates from Windows Update.
# 
# Note: This policy applies only when this PC is configured to connect to an intranet update service using the "Specify intranet Microsoft update service location" policy.
Turn off access to all Windows Update features:
  lgpo.set:
  - name: RemoveWindowsUpdate_ICM
  - setting: Enabled
  - policy_class: Machine
