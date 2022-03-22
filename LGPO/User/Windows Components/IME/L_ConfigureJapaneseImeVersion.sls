# windows:SUPPORTED_Windows_10_0_19H1
#
# This policy setting controls the version of Microsoft IME.​
# 
# If you don’t configure this policy setting, user can control IME version to use. The new Microsoft IME is on by default.​
# 
# If you enable this, user is not allowed to control IME version to use. The previous version of Microsoft IME is always selected.​
# 
# If you disable this, user is not allowed to control IME version to use. The new Microsoft IME is always selected.
# 
# This Policy setting applies only to Microsoft Japanese IME.
# 
# Note: Changes to this setting will not take effect until the user logs off.
Configure Japanese IME version:
  lgpo.set:
  - name: L_ConfigureJapaneseImeVersion
  - setting: Enabled
  - policy_class: User
