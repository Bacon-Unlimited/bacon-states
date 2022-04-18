# WinBlueExclusive
#
# This policy setting allows you to control what information is shared with Bing in Search.
# 
# If you enable this policy setting, you can specify one of four settings, which users won't be able to change:
# 
#     -User info and location: Share a user's search history, some Microsoft account info, and specific location to personalize their search and other Microsoft experiences.
#     
#     -User info only: Share a user's search history and some Microsoft account info to personalize their search and other Microsoft experiences.
#     
#     -Anonymous info: Share usage information but don't share search history, Microsoft account info or specific location.    
# 
# If you disable or don't configure this policy setting, users can choose what information is shared in Search.
Set what information is shared in Search:
  lgpo.set:
  - name: SearchPrivacy
  - setting:
      SharePrivacy_Dropdown: enum-placeholder
  - policy_class: Machine
