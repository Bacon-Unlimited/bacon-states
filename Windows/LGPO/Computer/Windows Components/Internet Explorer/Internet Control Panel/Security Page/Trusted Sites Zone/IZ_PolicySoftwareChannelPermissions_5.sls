# SUPPORTED_IE6SP2_IE7
#
# This policy setting allows you to manage software channel permissions.
# 
# If you enable this policy setting, you can choose the following options from the drop-down box.
# 
# Low safety to allow users to be notified of software updates by e-mail, software packages to be automatically downloaded to users' computers, and software packages to be automatically installed on users' computers.
# 
# Medium safety to allow users to be notified of software updates by e-mail and software packages to be automatically downloaded to (but not installed on) users' computers.
# 
# High safety to prevent users from being notified of software updates by e-mail, software packages from being automatically downloaded to users' computers, and software packages from being automatically installed on users' computers.
# 
# If you disable this policy setting, permissions are set to high safety.
# 
# If you do not configure this policy setting, permissions are set to Low safety.
Software channel permissions:
  lgpo.set:
  - name: IZ_PolicySoftwareChannelPermissions_5
  - setting:
      IZ_Partname1E05: enum-placeholder
  - policy_class: Machine
