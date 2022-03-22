# windows:SUPPORTED_Windows_10_0_19H1
#
# This policy setting allows you to control whether graphing functionality is available in the Windows Calculator app. If you disable this policy setting, graphing functionality will not be accessible in the Windows Calculator app. If you enable or don't configure this policy setting, users will be able to access graphing functionality.
Allow Graphing Calculator:
  lgpo.set:
  - name: AllowGraphingCalculator
  - setting: Enabled
  - policy_class: User
