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
# LOCATION: \User\Windows Components\Internet Explorer\Offline Pages\NoScheduledUpdates.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5_6
#
# Disables existing schedules for downloading Web pages for offline viewing.
# 
# When users make Web pages available for offline viewing, they can view content when their computer is not connected to the Internet.
# 
# If you enable this policy, the check boxes for schedules on the Schedule tab of the Web page properties are cleared and users cannot select them. To display this tab, users click the Tools menu, click Synchronize, select a Web page, click the Properties button, and then click the Schedule tab.
# 
# If you disable this policy, then Web pages can be updated on the schedules specified on the Schedule tab.
# 
# This policy is intended for organizations that are concerned about server load for downloading content.
# 
# The "Hide Favorites menu" policy (located in User Configuration\Administrative Templates\Windows Components\Internet Explorer) takes precedence over this policy. If it is enabled, this policy is ignored.
Disable all scheduled offline pages:
  lgpo.set:
  - name: NoScheduledUpdates
  - setting: Enabled
  - policy_class: User
