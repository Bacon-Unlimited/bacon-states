# SUPPORTED_INTERNET_BROWSER_WIN10
#
# This policy setting lets you configure what appears when Microsoft Edge opens a new tab. By default, Microsoft Edge opens the New Tab page.
# 
# If you enable this setting, Microsoft Edge opens a new tab with the New Tab page.
# 
# If you disable this setting, Microsoft Edge opens a new tab with a blank page. If you use this setting, employees can't change it.
# 
# If you don't configure this setting, employees can choose how new tabs appears.
Allow web content on New Tab page:
  lgpo.set:
  - name: AllowWebContentOnNewTabPage
  - setting: Enabled
  - policy_class: Machine
