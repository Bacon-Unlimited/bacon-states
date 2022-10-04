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
# LOCATION: \User\Windows Components\Internet Explorer\Toolbars\NoBandCustomize.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5
#
# Prevents users from determining which toolbars are displayed in Microsoft Internet Explorer and File Explorer.
# 
# If you enable this policy, the list of toolbars, which users can display by clicking the View menu and then pointing to the Toolbars command, will appear dimmed.
# 
# If you disable this policy or do not configure it, users can determine which toolbars are displayed in File Explorer and Internet Explorer.
# 
# This policy can be used in coordination with the "Disable customizing browser toolbar buttons" policy, which prevents users from adding or removing toolbars from Internet Explorer.
Disable customizing browser toolbars:
  lgpo.set:
  - name: NoBandCustomize
  - setting: Enabled
  - policy_class: User
