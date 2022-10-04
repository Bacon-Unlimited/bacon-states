####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \Computer\Windows Components\Microsoft Edge\ConfigureFavoritesBar.sls
#
# SUPPORTED WINDOWS OS
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
  - policy_class: Machine
