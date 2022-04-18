# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to manage the clean up behavior of root certificates.  If you enable this policy setting then root certificate cleanup will occur according to the option selected. If you disable or do not configure this setting then root certificate clean up will occur on log off.
Configure root certificate clean up:
  lgpo.set:
  - name: CertPropRootCleanupString
  - setting:
      RootCertCleanupOption_Levels: enum-placeholder
  - policy_class: Machine
