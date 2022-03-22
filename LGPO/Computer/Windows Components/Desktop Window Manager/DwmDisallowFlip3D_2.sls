# windows:SUPPORTED_Windows7ToVista
#
# This policy setting allows you to configure the accessibility of the Flip 3D feature. Flip 3D allows the user to view items on the Windows desktop as they are being flipped through in three dimensions. 
# 
# If you enable this policy setting, Flip 3D is inaccessible. 
# 
# If you disable or do not configure this policy setting, Flip 3D is accessible, if desktop composition is turned on. When Windows Flip 3D is activated with the Windows+Tab keys, a visual version of the desktop is presented and items can be flipped through to select. 
# 
# Changing this policy setting requires a logoff for it to be applied.
Do not allow Flip3D invocation:
  lgpo.set:
  - name: DwmDisallowFlip3D_2
  - setting: Enabled
  - policy_class: Machine
