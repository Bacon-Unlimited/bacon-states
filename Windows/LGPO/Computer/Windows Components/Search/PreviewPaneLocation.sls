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
# LOCATION: \Computer\Windows Components\Search\PreviewPaneLocation.sls
#
# SUPPORTED WINDOWS OS
# RedistOnly
#
# Enabling this policy allows you to set the location of the preview pane in the Desktop Search results. You can also turn off the preview pane. The four options are:
# 
# - Auto
# - Right
# - Bottom
# - Off
# 
# You should consider enabling this policy to turn off the preview pane if your environment does not support Office XP or later. The full preview pane functionality is only available for Office documents in Office XP or later.
# 
# When this policy is disabled or not configured, the preview pane shows automatically to the right of the Desktop Search results, and your users can choose the location of the preview pane
Preview pane location:
  lgpo.set:
  - name: PreviewPaneLocation
  - setting:
      PreviewPaneLocation: enum-placeholder
  - policy_class: Machine
