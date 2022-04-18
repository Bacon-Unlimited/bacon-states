# windows:SUPPORTED_WindowsPreVista
#
# Prevents users from using Add or Remove Programs to configure installed services.
# 
# This setting removes the "Set up services" section of the Add/Remove Windows Components page. The "Set up services" section lists system services that have not been configured and offers users easy access to the configuration tools.
# 
# If you disable this setting or do not configure it, "Set up services" appears only when there are unconfigured system services. If you enable this setting, "Set up services" never appears.
# 
# This setting does not prevent users from using other methods to configure services.
# 
# Note: When "Set up services" does not appear, clicking the Add/Remove Windows Components button starts the Windows Component Wizard immediately. Because the only remaining option on the Add/Remove Windows Components page starts the wizard, that option is selected automatically, and the page is bypassed.
# 
# To remove "Set up services" and prevent the Windows Component Wizard from starting, enable the "Hide Add/Remove Windows Components page" setting. If the "Hide Add/Remove Windows Components page" setting is enabled, this setting is ignored.
Go directly to Components Wizard:
  lgpo.set:
  - name: NoServices
  - setting: Enabled
  - policy_class: User
