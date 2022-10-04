####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \Computer\System\App-V\Publishing\Publishing_Server5_Policy.sls
#
# SUPPORTED WINDOWS OS
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
