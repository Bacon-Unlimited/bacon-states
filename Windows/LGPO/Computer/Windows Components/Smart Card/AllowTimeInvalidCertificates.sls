# windows:SUPPORTED_WindowsVista
#
# This policy setting permits those certificates to be displayed for logon that are either expired or not yet valid.
# 
# Under previous versions of Microsoft Windows, certificates were required to contain a valid time and not be expired.  The certificate must still be accepted by the domain controller in order to be used.  This setting only controls the displaying of the certificate on the client machine. 
# 
# If you enable this policy setting certificates will be listed on the logon screen regardless of whether they have an invalid time or their time validity has expired.
# 
# If you disable or do not configure this policy setting, certificates which are expired or not yet valid will not be listed on the logon screen.
Allow time invalid certificates:
  lgpo.set:
  - name: AllowTimeInvalidCertificates
  - setting: Enabled
  - policy_class: Machine
