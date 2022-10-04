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
# LOCATION: \User\Windows Components\Internet Explorer\NeedEdgeBrowser.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE11
#
# Enables you to configure up to three versions of Microsoft Edge to open a redirected site (in order of preference). Use this policy if your environment is configured to redirect sites from Internet Explorer 11 to Microsoft Edge. If any of the chosen versions are not installed on the device, that preference will be bypassed.
# 
# If both the Windows Update for the next version of Microsoft Edge* and Microsoft Edge Stable channel are installed, the following behaviors occur:
# - If you disable or don't configure this policy, Microsoft Edge Stable channel is used. This is the default behavior.
# - If you enable this policy, you can configure redirected sites to open in up to three of the following channels where:
#     1 = Microsoft Edge Stable
#     2 = Microsoft Edge Beta version 77 or later
#     3 = Microsoft Edge Dev version 77 or later
#     4 = Microsoft Edge Canary version 77 or later
# 
# If the Windows Update for the next version of Microsoft Edge* or Microsoft Edge Stable channel are not installed, the following behaviors occur:
# - If you disable or don't configure this policy, Microsoft Edge version 45 or earlier is automatically used. This is the default behavior.
# - If you enable this policy, you can configure redirected sites to open in up to three of the following channels where:
#     0 = Microsoft Edge version 45 or earlier
#     1 = Microsoft Edge Stable
#     2 = Microsoft Edge Beta version 77 or later
#     3 = Microsoft Edge Dev version 77 or later
#     4 = Microsoft Edge Canary version 77 or later
# 
# *For more information about the Windows update for the next version of Microsoft Edge including how to disable it, see https://go.microsoft.com/fwlink/?linkid=2102115. This update applies only to Windows 10 version 1709 and higher.
Configure which channel of Microsoft Edge to use for opening redirected sites:
  lgpo.set:
  - name: NeedEdgeBrowser
  - setting:
      NeedEdgeBrowser: enum-placeholder
      NeedEdgeBrowser2: enum-placeholder
      NeedEdgeBrowser3: enum-placeholder
  - policy_class: User
