# windows:SUPPORTED_WindowsVista
#
# This policy setting lets you reverse the subject name from how it is stored in the certificate when displaying it during logon.  
#           
# By default the user principal name (UPN) is displayed in addition to the common name to help users distinguish one certificate from another.  For example, if the certificate subject was CN=User1, OU=Users, DN=example, DN=com and had an UPN of user1@example.com then "User1" will be displayed along with "user1@example.com."  If the UPN is not present then the entire subject name will be displayed.  This setting controls the appearance of that subject name and might need to be adjusted per organization.
# 
# If you enable this policy setting or do not configure this setting, then the subject name will be reversed.  
# 
# If you disable , the subject name will be displayed as it appears in the certificate.
Reverse the subject name stored in a certificate when displaying:
  lgpo.set:
  - name: ReverseSubject
  - setting: Enabled
  - policy_class: Machine
