# RedistOnly
#
# Enabling this policy removes the option of searching the Web from Windows Desktop Search.
# 
# When this policy is disabled or not configured, the Web option is available and users can search the Web via their default browser search engine.
Do not allow web search:
  lgpo.set:
  - name: DisableWebSearch
  - setting: Enabled
  - policy_class: Machine
