# windows:SUPPORTED_WindowsPreVista
#
# This policy setting allows you to prevent radio station presets from being retrieved from the Internet.
# 
# If you enable this policy setting, the Player is prevented from automatically retrieving radio station presets from the Internet and displaying them in Media Library. In addition, presets that exist before the policy is configured are not be updated, and presets a user adds are not be displayed.
# 
# If you disable or do not configure this policy setting, the Player automatically retrieves radio station presets from the Internet.
Prevent Radio Station Preset Retrieval:
  lgpo.set:
  - name: PreventRadioPresetsRetrieval
  - setting: Enabled
  - policy_class: User
