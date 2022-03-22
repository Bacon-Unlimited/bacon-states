# windows:SUPPORTED_Windows_6_3
#
# Windows Runtime applications can protect content which has been associated with an enterprise identifier (EID), but can only revoke access to content it protected. To allow an application to revoke access to all content on the device that is protected by a particular enterprise, add an entry to the list on a new line that contains the enterprise identifier, separated by a comma, and the Package Family Name of the application. The EID must be an internet domain belonging to the enterprise in standard international domain name format. 
#  
# Example value: 
# Contoso.com,ContosoIT.HumanResourcesApp_m5g0r7arhahqy
#  
# If you enable this policy setting, the application identified by the Package Family Name will be permitted to revoke access to all content protected using the specified EID on the device.
#  
# If you disable or do not configure this policy setting, the only Windows Runtime applications that can revoke access to all enterprise-protected content on the device are Windows Mail and the user-selected mailto protocol handler app.  Any other Windows Runtime application will only be able to revoke access to content it protected.
#  
# Note: File revocation applies to all content protected under the same second level domain as the provided enterprise identifier. So, revoking an enterprise ID of mail.contoso.com will revoke the user’s access to all content protected under the contoso.com hierarchy.
Allow Windows Runtime apps to revoke enterprise data:
  lgpo.set:
  - name: DelegatedPackageFamilyNames
  - setting:
      DelegatedPackageFamilyNames_EIDs: multiText-placeholder
  - policy_class: User
