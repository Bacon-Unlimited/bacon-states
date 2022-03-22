# windows:SUPPORTED_Windows7
#
#       Publishing Server Display Name: Displays the name of publishing server.
#       
#       Publishing Server URL: Displays the URL of publishing server.
#       
#       Global Publishing Refresh: Enables global publishing refresh (Boolean).
#       
#       Global Publishing Refresh On Logon: Triggers a global publishing refresh on logon (Boolean).
#       
#       Global Publishing Refresh Interval: Specifies the publishing refresh interval using the GlobalRefreshIntervalUnit. To disable package refresh, select 0.
#       
#       Global Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).
#       
#       User Publishing Refresh: Enables user publishing refresh (Boolean).
#       
#       User Publishing Refresh On Logon: Triggers a user publishing refresh on logon (Boolean).
#       
#       User Publishing Refresh Interval: Specifies the publishing refresh interval using the UserRefreshIntervalUnit. To disable package refresh, select 0.
#       
#       User Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).
#       
Publishing Server 5 Settings:
  lgpo.set:
  - name: Publishing_Server5_Policy
  - setting:
      Global_Publishing_Refresh_Options: enum-placeholder
      Global_Refresh_Interval_Prompt: decimal-placeholder
      Global_Refresh_OnLogon_Options: enum-placeholder
      Global_Refresh_Unit_Options: enum-placeholder
      Publishing_Server5_Name_Prompt: text-placeholder
      Publishing_Server_URL_Prompt: text-placeholder
      User_Publishing_Refresh_Options: enum-placeholder
      User_Refresh_Interval_Prompt: decimal-placeholder
      User_Refresh_OnLogon_Options: enum-placeholder
      User_Refresh_Unit_Options: enum-placeholder
  - policy_class: Machine
