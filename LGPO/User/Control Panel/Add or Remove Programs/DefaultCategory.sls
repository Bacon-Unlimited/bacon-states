# windows:SUPPORTED_WindowsPreVista
#
# Specifies the category of programs that appears when users open the "Add New Programs" page.
# 
# If you enable this setting, only the programs in the category you specify are displayed when the "Add New Programs" page opens. Users can use the Category box on the "Add New Programs" page to display programs in other categories.
# 
# To use this setting, type the name of a category in the Category box for this setting. You must enter a category that is already defined in Add or Remove Programs. To define a category, use Software Installation.
# 
# If you disable this setting or do not configure it, all programs (Category: All) are displayed when the "Add New Programs" page opens.
# 
# You can use this setting to direct users to the programs they are most likely to need.
# 
# Note: This setting is ignored if either the "Remove Add or Remove Programs" setting or the "Hide Add New Programs page" setting is enabled.
Specify default category for Add New Programs:
  lgpo.set:
  - name: DefaultCategory
  - setting:
      DefaultCategoryBox: text-placeholder
  - policy_class: User
