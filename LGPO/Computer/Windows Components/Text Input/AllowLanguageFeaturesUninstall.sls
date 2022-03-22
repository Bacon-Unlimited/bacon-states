# windows:SUPPORTED_Windows_10_0
#
# When this policy setting is enabled, some language features (such as handwriting recognizers and spell checking dictionaries) included with a language can be uninstalled from a user’s machine when the language is uninstalled. The language can be reinstalled with a different selection of included language features if needed. When this policy setting is disabled, language features remain on the user’s machine when the language is uninstalled. 
Allow uninstallation of language features when a language is uninstalled:
  lgpo.set:
  - name: AllowLanguageFeaturesUninstall
  - setting: Enabled
  - policy_class: Machine
