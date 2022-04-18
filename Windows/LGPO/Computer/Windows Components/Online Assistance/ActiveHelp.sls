# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies whether active content links in trusted assistance content are rendered.  By default, the Help viewer renders trusted assistance content with active elements such as ShellExecute links and Guided Help links.
# 
# If you enable this policy setting, active content links are not rendered. The text is displayed, but there are no clickable links for these elements.
# 
# If you disable or do not configure this policy setting, the default behavior applies (Help viewer renders trusted assistance content with active elements).
Turn off Active Help:
  lgpo.set:
  - name: ActiveHelp
  - setting: Enabled
  - policy_class: Machine
