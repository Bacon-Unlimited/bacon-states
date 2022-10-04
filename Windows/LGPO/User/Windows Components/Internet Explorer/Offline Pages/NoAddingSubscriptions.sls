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
# LOCATION: \User\Windows Components\Internet Explorer\Offline Pages\NoAddingSubscriptions.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5_6
#
# Prevents users from specifying that Web pages can be downloaded for viewing offline. When users make Web pages available for offline viewing, they can view the content when their computer is not connected to the Internet.
# 
# If you enable this policy, users cannot add new schedules for downloading offline content. The Make Available Offline check box will be dimmed in the Add Favorite dialog box.
# 
# If you disable this policy or do not configure it, users can add new offline content schedules.
# 
# This policy is intended for organizations that are concerned about server load for downloading content.
# 
# The "Hide Favorites menu" policy (located in User Configuration\Administrative Templates\Windows Components\Internet Explorer) takes precedence over this policy. If it is enabled, this policy is ignored.
Disable adding schedules for offline pages:
  lgpo.set:
  - name: NoAddingSubscriptions
  - setting: Enabled
  - policy_class: User
