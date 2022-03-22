# windows:SUPPORTED_Windows7
#
# Specifies whether or not the "local access only" network icon will be shown.
# 
# When enabled, the icon for Internet access will be shown in the system tray even when a user is connected to a network with local access only.
# 
# If you disable this setting or do not configure it, the "local access only" icon will be used when a user is connected to a network with local access only.
Do not show the "local access only" network icon:
  lgpo.set:
  - name: NC_DoNotShowLocalOnlyIcon
  - setting: Enabled
  - policy_class: Machine
