# SUPPORTED_IE7
#
# This policy setting allows you to manage the loading of Extensible Application Markup Language (XAML) files. XAML is an XML-based declarative markup language commonly used for creating rich user interfaces and graphics that take advantage of the Windows Presentation Foundation.
# 
# If you enable this policy setting and set the drop-down box to Enable, XAML files are automatically loaded inside Internet Explorer. The user cannot change this behavior. If you set the drop-down box to Prompt, the user is prompted for loading XAML files.
# 
# If you disable this policy setting, XAML files are not loaded inside Internet Explorer. The user cannot change this behavior.
# 
# If you do not configure this policy setting, the user can decide whether to load XAML files inside Internet Explorer.
Allow loading of XAML files:
  lgpo.set:
  - name: IZ_Policy_XAML_7
  - setting:
      IZ_Partname2402: enum-placeholder
  - policy_class: User
