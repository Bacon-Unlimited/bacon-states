# windows:SUPPORTED_WindowsVista
#
# This policy setting requires the user to enter Microsoft Windows credentials using a trusted path, to prevent a Trojan horse or other types of malicious code from stealing the users Windows credentials.
# 
# Note: This policy affects nonlogon authentication tasks only. As a security best practice, this policy should be enabled.
# 
# If you enable this policy setting, users will be required to enter Windows credentials on the Secure Desktop by means of the trusted path mechanism.
# 
# If you disable or do not configure this policy setting, users will enter Windows credentials within the users desktop session, potentially allowing malicious code access to the users Windows credentials.
Require trusted path for credential entry:
  lgpo.set:
  - name: EnableSecureCredentialPrompting
  - setting: Enabled
  - policy_class: Machine
