# windows:SUPPORTED_WindowsXP
#
# This policy setting specifies whether the Windows NTP Client is enabled.
# 
# Enabling the Windows NTP Client allows your computer to synchronize its computer clock with other NTP servers. You might want to disable this service if you decide to use a third-party time provider.
# 
# If you enable this policy setting, you can set the local computer clock to synchronize time with NTP servers.
# 
# If you disable or do not configure this policy setting, the local computer clock does not synchronize time with NTP servers.
#       
Enable Windows NTP Client:
  lgpo.set:
  - name: W32TIME_POLICY_ENABLE_NTPCLIENT
  - setting: Enabled
  - policy_class: Machine
