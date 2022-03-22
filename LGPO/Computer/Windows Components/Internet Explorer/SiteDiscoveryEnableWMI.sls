# SUPPORTED_IE8
#
# This policy setting allows you to manage the WMI output functionality of the Internet Explorer Site discovery Toolkit(SDTK). When enabled the feature will write data collected to a WMI class which can then be aggregated using a client management solution(SCCM) or other means. When disabled, no data will be written to the WMI class. Enabling or disabling this setting will not impact other output methods available for the SDTK.
Turn on Site Discovery WMI output:
  lgpo.set:
  - name: SiteDiscoveryEnableWMI
  - setting: Enabled
  - policy_class: Machine
