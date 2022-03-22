# windows:SUPPORTED_WindowsXP
#
# This policy setting allows you to remove CD Burning features. File Explorer allows you to create and modify re-writable CDs if you have a CD writer connected to your PC.
# 
# If you enable this policy setting, all features in the File Explorer that allow you to use your CD writer are removed.
# 
# If you disable or do not configure this policy setting, users are able to use the File Explorer CD burning features.
# 
# Note: This policy setting does not prevent users from using third-party applications to create or modify CDs using a CD writer.
Remove CD Burning features:
  lgpo.set:
  - name: NoCDBurning
  - setting: Enabled
  - policy_class: User
