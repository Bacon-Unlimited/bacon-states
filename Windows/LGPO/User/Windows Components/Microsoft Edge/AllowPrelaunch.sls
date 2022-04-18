# SUPPORTED_INTERNET_BROWSER_RS5
#
# This policy setting lets you decide whether Microsoft Edge can pre-launch during Windows sign in, when the system is idle, and each time Microsoft Edge is closed. By default this setting is to allow pre-launch.
# 
# If you allow pre-launch, disable, or dont configure this policy setting, Microsoft Edge pre-launches during Windows sign in, when the system is idle, and each time Microsoft Edge is closed; minimizing the amount of time required to start up Microsoft Edge.
# 
# If you prevent pre-launch, Microsoft Edge wont pre-launch during Windows sign in, when the system is idle, or each time Microsoft Edge is closed.
Allow Microsoft Edge to pre-launch at Windows startup, when the system is idle, and each time Microsoft Edge is closed:
  lgpo.set:
  - name: AllowPrelaunch
  - setting:
      AllowPrelaunchDropdown: enum-placeholder
  - policy_class: User
