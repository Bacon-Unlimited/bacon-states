# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# This policy setting specifies whether Mobile Device Management (MDM) Enrollment is allowed. When MDM is enabled, it allows the user to have the computer remotely managed by a MDM Server.  
# 
# If you do not configure this policy setting, MDM Enrollment will be enabled. 
# 
# If you enable this policy setting, MDM Enrollment will be disabled for all users. It will not unenroll existing MDM enrollments.
# 
# If you disable this policy setting, MDM Enrollment will be enabled for all users.
#       
Disable MDM Enrollment:
  lgpo.set:
  - name: MDM_MDM_DisplayName
  - setting: Enabled
  - policy_class: Machine
