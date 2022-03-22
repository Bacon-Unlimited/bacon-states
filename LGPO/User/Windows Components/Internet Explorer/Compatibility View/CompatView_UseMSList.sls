# SUPPORTED_IE8
#
# This policy controls the website compatibility lists that Microsoft provides. The updated website lists are available on Windows Update.
# 
# If you enable this policy setting, the Microsoft-provided website lists are used during browser navigation. If a user visits a site on the compatibility lists, the pages are automatically displayed in Compatibility View.
# 
# If you disable this policy setting, the Microsoft-provided website lists are not used. Additionally, the user cannot activate the feature by using the Compatibility View Settings dialog box.
# 
# If you do not configure this policy setting, the Microsoft-provided website lists are not active. The user can activate the feature by using the Compatibility View Settings dialog box.
Include updated website lists from Microsoft:
  lgpo.set:
  - name: CompatView_UseMSList
  - setting: Enabled
  - policy_class: User
