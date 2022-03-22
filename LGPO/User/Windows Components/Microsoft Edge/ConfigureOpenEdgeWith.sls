# SUPPORTED_INTERNET_BROWSER_RS5
#
# You can configure Microsoft Edge to lock down the Start page, preventing users from changing or customizing it.
# 
# If enabled, you can choose one of the following options:
# - Start page: the Start page loads ignoring the Configure Start Pages policy.
# - New tab page: the New tab page loads ignoring the Configure Start Pages policy.
# - Previous pages: all tabs the user had open when Microsoft Edge last closed loads ignoring the Configure Start Pages policy.
# - A specific page or pages: the URL(s) specified with Configure Start Pages policy load(s). If selected, you must specify at least one URL in Configure Start Pages; otherwise, this policy is ignored.
# 
# When enabled, and you want to make changes, you must first set the Disable Lockdown of Start Pages to not configured, make the changes to the Configure Open Microsoft Edge With policy, and then enable the Disable Lockdown of Start Pages policy.
# 
# If disabled or not configured, and you enable the Disable Lockdown of Start Pages policy, your users can change or customize the Start page.
# 
# Default setting: A specific page or pages (default)
# Related policies:
# -Disable Lockdown of Start Pages
# -Configure Start Pages
Configure Open Microsoft Edge With:
  lgpo.set:
  - name: ConfigureOpenEdgeWith
  - setting:
      ConfigureOpenEdgeWithListBox: enum-placeholder
  - policy_class: User
