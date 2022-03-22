# windows:SUPPORTED_Windows8
#
# This policy setting specifies the message that users see when they are denied access to a file or folder. You can customize the Access Denied message to include additional text and links. You can also provide users with the ability to send an email to request access to the file or folder to which they were denied access.
# 
# If you enable this policy setting, users receive a customized Access Denied message from the file servers on which this policy setting is applied. 
# 
# If you disable this policy setting, users see a standard Access Denied message that doesn't provide any of the functionality controlled by this policy setting, regardless of the file server configuration.
# 
# If you do not configure this policy setting, users see a standard Access Denied message unless the file server is configured to display the customized Access Denied message. By default, users see the standard Access Denied message.
# 
Customize message for Access Denied errors:
  lgpo.set:
  - name: AccessDeniedConfiguration
  - setting:
      AdditonalEmailToText: text-placeholder
      AllowEmailRequestsCheck: boolean-placeholder
      EmailMessageText: multiText-placeholder
      ErrorMessageText: multiText-placeholder
      GenerateLogCheck: boolean-placeholder
      IncludeDeviceClaimsCheck: boolean-placeholder
      IncludeUserClaimsCheck: boolean-placeholder
      PutAdminOnToCheck: boolean-placeholder
      PutDataOwnerOnToCheck: boolean-placeholder
  - policy_class: Machine
