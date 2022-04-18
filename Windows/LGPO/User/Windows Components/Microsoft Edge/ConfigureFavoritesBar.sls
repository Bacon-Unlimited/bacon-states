# SUPPORTED_INTERNET_BROWSER_RS5
#
# The favorites bar shows your user's links to sites they have added to it. With this policy, you can specify whether to set the favorites bar to always be visible or hidden on any page.
# 
# If enabled, favorites bar is always visible on any page, and the favorites bar toggle in Settings sets to On, but disabled preventing your users from making changes. An error message also shows at the top of the Settings pane indicating that your organization manages some settings. The show bar/hide bar option is hidden from the context menu.
# 
# If disabled, the favorites bar is hidden, and the favorites bar toggle resets to Off, but disabled preventing your users from making changes. An error message also shows at the top of the Settings pane indicating that your organization manages some settings.
# 
# If not configured, the favorites bar is hidden but is visible on the Start and New Tab pages, and the favorites bar toggle in Settings sets to Off but is enabled allowing the user to make changes.
Configure Favorites Bar:
  lgpo.set:
  - name: ConfigureFavoritesBar
  - setting: Enabled
  - policy_class: User
