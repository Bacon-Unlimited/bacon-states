# SUPPORTED_INTERNET_BROWSER_RS5
#
# Microsoft Edge saves your user's browsing history, which is made up of info about the websites they visit, on their devices.
# 
# If enabled or not configured, the browsing history is saved and visible in the History pane.
# 
# If disabled, the browsing history stops saving and is not visible in the History pane. If browsing history exists before this policy was disabled, the previous browsing history remains visible in the History pane. This policy, when disabled, does not stop roaming of existing history or history coming from other roamed devices.
Allow Saving History:
  lgpo.set:
  - name: AllowSavingHistory
  - setting: Enabled
  - policy_class: Machine
