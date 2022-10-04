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
# LOCATION: \User\Windows Components\Internet Explorer\NoWindowReuse.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting allows you to configure how windows open in Internet Explorer when the user clicks links from other applications.
# 
# If you enable this policy setting, the user cannot configure how windows open in Internet Explorer when he or she clicks links from other applications. You must specify one of the following:
#      Open in an existing Internet Explorer window. If tabbed browsing is enabled, a new tab is created in this scenario.
#      Open a new Internet Explorer window.
# 
# If you disable or do not configure this policy setting, the user can configure how windows open when he or she clicks links from other applications.
Prevent configuration of how windows open:
  lgpo.set:
  - name: NoWindowReuse
  - setting:
      SelectWindowReuse: enum-placeholder
  - policy_class: User
