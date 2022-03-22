# windows:SUPPORTED_Windows7
#
# This policy setting determines whether users can log on or elevate User Account Control (UAC) permissions using biometrics.  By default, local users will be able to log on to the local computer, but the "Allow domain users to log on using biometrics" policy setting will need to be enabled for domain users to log on to the domain.
# 
# If you enable or do not configure this policy setting, all users can log on to a local Windows-based computer and can elevate permissions with UAC using biometrics.
# 
# If you disable this policy setting, biometrics cannot be used by any users to log on to a local Windows-based computer.
# 
# Note: Users who log on using biometrics should create a password recovery disk; this will prevent data loss in the event that someone forgets their logon credentials.
# 
Allow users to log on using biometrics:
  lgpo.set:
  - name: Biometrics_EnableCredProv
  - setting: Enabled
  - policy_class: Machine
