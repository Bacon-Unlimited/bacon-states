# SUPPORTED_IE7
#
# This policy setting allows you to manage the loading of XAML Browser Applications (XBAPs). These are browser-hosted, ClickOnce-deployed applications built via WinFX. These applications run in a security sandbox and take advantage of the Windows Presentation Foundation platform for the web.
# 
# If you enable this policy setting and set the drop-down box to Enable, XBAPs are automatically loaded inside Internet Explorer. The user cannot change this behavior. If you set the drop-down box to Prompt, the user is prompted for loading XBAPs.
# 
# If you disable this policy setting, XBAPs are not loaded inside Internet Explorer. The user cannot change this behavior.
# 
# If you do not configure this policy setting, the user can decide whether to load XBAPs inside Internet Explorer.
Allow loading of XAML Browser Applications:
  lgpo.set:
  - name: IZ_Policy_WebBrowserApps_4
  - setting:
      IZ_Partname2400: enum-placeholder
  - policy_class: User
