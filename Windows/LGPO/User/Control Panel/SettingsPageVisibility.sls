# windows:SUPPORTED_Windows_10_0_RS2
#
# Specifies the list of pages to show or hide from the System Settings app.
# 
# This policy allows an administrator to block a given set of pages from the System Settings app. Blocked pages will not be visible in the app, and if all pages in a category are blocked the category will be hidden as well. Direct navigation to a blocked page via URI, context menu in Explorer or other means will result in the front page of Settings being shown instead.
# 
# This policy has two modes: it can either specify a list of settings pages to show or a list of pages to hide. To specify a list of pages to show, the policy string must begin with "showonly:" (without quotes), and to specify a list of pages to hide, it must begin with "hide:". If a page in a showonly list would normally be hidden for other reasons (such as a missing hardware device), this policy will not force that page to appear. After this, the policy string must contain a semicolon-delimited list of settings page identifiers. The identifier for any given settings page is the published URI for that page, minus the "ms-settings:" protocol part.
# 
# Example: to specify that only the About and Bluetooth pages should be shown (their respective URIs are ms-settings:about and ms-settings:bluetooth) and all other pages hidden:
# 
# showonly:about;bluetooth
# 
# Example: to specify that only the Bluetooth page (which has URI ms-settings:bluetooth) should be hidden:
# 
# hide:bluetooth
# 
# The availability of per-user support is documented here: https://go.microsoft.com/fwlink/?linkid=2102995
Settings Page Visibility:
  lgpo.set:
  - name: SettingsPageVisibility
  - setting:
      SettingsPageVisibilityBox: text-placeholder
  - policy_class: User
