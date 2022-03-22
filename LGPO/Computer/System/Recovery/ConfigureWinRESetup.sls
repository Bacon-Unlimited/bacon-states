# windows:SUPPORTED_Windows7Only
#
#     Requirements: Windows 7
#     Description: This policy setting controls whether users can access the options in Recovery (in Control Panel) to restore the computer to the original state or from a user-created system image.
# 
#     If you enable or do not configure this policy setting, the items "Use a system image you created earlier to recover your computer" and "Reinstall Windows" (or "Return your computer to factory condition") appears on the "Advanced recovery methods" page of Recovery (in Control Panel) and will allow the user to restore the computer to the original state or from a user-created system image. This is the default setting.
# 
#     If you disable this policy setting, the items "Use a system image you created earlier to recover your computer" and "Reinstall Windows" (or "Return your computer to factory condition") in Recovery (in Control Panel) will be unavailable. However, with this policy setting disabled, users can still restore the computer to the original state or from a user-created system image by restarting the computer and accessing the System Recovery Options menu, if it is available.
Allow restore of system to default state:
  lgpo.set:
  - name: ConfigureWinRESetup
  - setting: Enabled
  - policy_class: Machine
