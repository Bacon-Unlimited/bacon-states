# windows:SUPPORTED_Windows_10_0
#
# This policy setting determines whether or not the user can interact with Cortana using speech while the system is locked.
# 
# If you enable or dont configure this setting, the user can interact with Cortana using speech while the system is locked.
# 
# If you disable this setting, the system will need to be unlocked for the user to interact with Cortana using speech.
Allow Cortana above lock screen:
  lgpo.set:
  - name: AllowCortanaAboveLock
  - setting: Enabled
  - policy_class: Machine
