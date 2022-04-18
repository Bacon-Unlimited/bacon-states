# windows:SUPPORTED_Windows_10_0_RS2
#
# Remote host allows delegation of non-exportable credentials
# 
# When using credential delegation, devices provide an exportable version of credentials to the remote host. This exposes users to the risk of credential theft from attackers on the remote host.
# 
# If you enable this policy setting, the host supports Restricted Admin or Remote Credential Guard mode.
# 
# If you disable or do not configure this policy setting, Restricted Administration and Remote Credential Guard mode are not supported. User will always need to pass their credentials to the host.
Remote host allows delegation of non-exportable credentials:
  lgpo.set:
  - name: AllowProtectedCreds
  - setting: Enabled
  - policy_class: Machine
