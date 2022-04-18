# windows:SUPPORTED_Windows7
#
# The policy controls the state of the Switchback compatibility engine in the system. 
# 
# Switchback is a mechanism that provides generic compatibility mitigations to older applications by providing older behavior to old applications and new behavior to new applications. 
# 
# Switchback is on by default.
# 
# If you enable this policy setting, Switchback will be turned off. Turning Switchback off may degrade the compatibility of older applications. This option is useful for server administrators who require performance and are aware of compatibility of the applications they are using. 
# 
# If you disable or do not configure this policy setting, the Switchback will be turned on.
# 
# Please reboot the system after changing the setting to ensure that your system accurately reflects those changes.
Turn off SwitchBack Compatibility Engine:
  lgpo.set:
  - name: AppCompatTurnOffSwitchBack
  - setting: Enabled
  - policy_class: Machine
