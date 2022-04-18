# windows:SUPPORTED_Windows7
#
# This policy setting allows or prevents the Windows Biometric Service to run on this computer.
#         
# If you enable or do not configure this policy setting, the Windows Biometric Service is available, and users can run applications that use biometrics on Windows. If you want to enable the ability to log on with biometrics, you must also configure the "Allow users to log on using biometrics" policy setting.
# 
# If you disable this policy setting, the Windows Biometric Service is unavailable, and users cannot use any biometric feature in Windows.
# 
# Note: Users who log on using biometrics should create a password recovery disk; this will prevent data loss in the event that someone forgets their logon credentials.
#       
Allow the use of biometrics:
  lgpo.set:
  - name: Biometrics_EnableBio
  - setting: Enabled
  - policy_class: Machine
