# windows:SUPPORTED_WindowsXPSP2_Or_WindowsNETSP1
#
# This policy setting specifies whether the Windows Registration Wizard connects to Microsoft.com for online registration.
# 
# If you enable this policy setting, it blocks users from connecting to Microsoft.com for online registration and users cannot register their copy of Windows online.
# 
# If you disable or do not configure this policy setting, users can connect to Microsoft.com to complete the online Windows Registration.
# 
# Note that registration is optional and involves submitting some personal information to Microsoft. However, Windows Product Activation is required but does not involve submitting any personal information (except the country/region you live in).
Turn off Registration if URL connection is referring to Microsoft.com:
  lgpo.set:
  - name: NC_NoRegistration
  - setting: Enabled
  - policy_class: Machine
