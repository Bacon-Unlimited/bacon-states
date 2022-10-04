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
# LOCATION: \User\Windows Components\Internet Explorer\Offline Pages\NoSubscriptionContent.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5_6
#
# Prevents content from being downloaded from Web sites that users have subscribed to.
# 
# When users make Web pages available for offline viewing, they can view content when their computer is not connected to the Internet.
# 
# If you enable this policy, content will not be downloaded from Web sites that users have subscribed to. However, synchronization with the Web pages will still occur to determine if any content has been updated since the last time the user synchronized with or visited the page.
# 
# If you disable this policy or do not configure it, content will not be prevented from being downloaded.
# 
# The "Disable downloading of site subscription content" policy and the "Hide Favorites menu" policy (located in User Configuration\Administrative Templates\Windows Components\Internet Explorer) take precedence over this policy. If either policy is enabled, this policy is ignored.
Disable downloading of site subscription content:
  lgpo.set:
  - name: NoSubscriptionContent
  - setting: Enabled
  - policy_class: User
