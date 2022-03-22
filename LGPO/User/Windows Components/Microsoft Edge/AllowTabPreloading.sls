# SUPPORTED_INTERNET_BROWSER_RS4
#
# This policy setting lets you decide whether Microsoft Edge can load the Start and New Tab page during Windows sign in and each time Microsoft Edge is closed. By default this setting is to allow preloading.
# 
# If you allow preloading, disable, or don’t configure this policy setting, Microsoft Edge loads the Start and New Tab page during Windows sign in and each time Microsoft Edge is closed; minimizing the amount of time required to start up Microsoft Edge and to start a new tab.
# 
# If you prevent preloading, Microsoft Edge won’t load the Start or New Tab page during Windows sign in and each time Microsoft Edge is closed.
? Allow Microsoft Edge to start and load the Start and New Tab page at Windows startup
  and each time Microsoft Edge is closed
: lgpo.set:
  - name: AllowTabPreloading
  - setting:
      AllowTabPreloadingDropdown: enum-placeholder
  - policy_class: User
