# windows:SUPPORTED_WindowsVista
#
# Specifies whether Digital Locker can run.
# 
# Digital Locker is a dedicated download manager associated with Windows Marketplace and a feature of Windows that can be used to manage and download products acquired and stored in the user's Windows Marketplace Digital Locker.
# 
# If you enable this setting, Digital Locker will not run.
# 
# If you disable or do not configure this setting, Digital Locker can be run.
Do not allow Digital Locker to run:
  lgpo.set:
  - name: Digitalx_DiableApplication_TitleText_1
  - setting: Enabled
  - policy_class: User
