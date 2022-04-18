# windows:SUPPORTED_Windows7
#
# This policy setting allows applications and services to prevent automatic sleep.
# 
# If you enable this policy setting, any application, service, or device driver prevents Windows from automatically transitioning to sleep after a period of user inactivity.
# 
# If you disable or do not configure this policy setting, applications, services, or drivers do not prevent Windows from automatically transitioning to sleep. Only user input is used to determine if Windows should automatically sleep.
Allow applications to prevent automatic sleep (plugged in):
  lgpo.set:
  - name: AllowSystemPowerRequestAC
  - setting: Enabled
  - policy_class: Machine
