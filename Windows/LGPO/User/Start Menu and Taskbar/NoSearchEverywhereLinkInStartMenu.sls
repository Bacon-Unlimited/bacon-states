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
# LOCATION: \User\Start Menu and Taskbar\NoSearchEverywhereLinkInStartMenu.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_Win7UntilThreshold
#
# 
#           If you enable this policy, a "See more results" / "Search Everywhere" link will not be shown when the user performs a search in the start menu search box.
# 
# If you disable or do not configure this policy, a "See more results" link will be shown when the user performs a search in the start menu search box.  If a 3rd party protocol handler is installed, a "Search Everywhere" link will be shown instead of the "See more results" link.
Remove See More Results / Search Everywhere link:
  lgpo.set:
  - name: NoSearchEverywhereLinkInStartMenu
  - setting: Enabled
  - policy_class: User
