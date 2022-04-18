# SUPPORTED_IE8
#
# This policy setting allows you to manage the XML output functionality of the Internet Explorer Site discovery Toolkit(SDTK). When enabled the feature will write data collected to an XML file at a location specified when setting this policy. When disabled, no data will be written to the XML file. Enabling or disabling this setting will not impact other output methods available for the SDTK.
Turn on Site Discovery XML output:
  lgpo.set:
  - name: SiteDiscoveryEnableXML
  - setting:
      SiteDiscoveryXMLPath: text-placeholder
  - policy_class: User
