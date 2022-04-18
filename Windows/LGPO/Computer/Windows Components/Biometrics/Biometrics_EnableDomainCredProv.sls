# windows:SUPPORTED_Windows7
#
# This policy setting determines whether users with a domain account can log on or elevate User Account Control (UAC) permissions using biometrics.
# 
# If you enable or do not configure this policy setting, Windows allows domain users to log on to a domain-joined computer using biometrics.
# 
# If you disable this policy setting, Windows prevents domain users from logging on to a domain-joined computer using biometrics.
# 
# Note: Prior to Windows 10, not configuring this policy setting would have prevented domain users from using biometrics to log on.
# 
Allow domain users to log on using biometrics:
  lgpo.set:
  - name: Biometrics_EnableDomainCredProv
  - setting: Enabled
  - policy_class: Machine
