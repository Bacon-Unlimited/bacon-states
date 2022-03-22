# windows:SUPPORTED_Windows8
#
# This policy setting defines whether the User Experience Virtualization (UE-V) Agent synchronizes settings for Windows apps.
# By default, the UE-V Agent synchronizes settings for Windows apps between the computer and the settings storage location.  
# If you enable this policy setting, the UE-V Agent will not synchronize settings for Windows apps.
# If you disable this policy setting, the UE-V Agent will synchronize settings for Windows apps. 
# If you do not configure this policy setting, any defined values are deleted.
# Note: If the user connects their Microsoft account for their computer then the UE-V Agent will not synchronize Windows apps. The Windows apps will default to whatever settings are configured in the Sync your settings configuration in Windows.
#       
Do not synchronize Windows Apps:
  lgpo.set:
  - name: DisableWin8Sync
  - setting: Enabled
  - policy_class: User
